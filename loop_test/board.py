from pynq import Overlay
import numpy as np
import json
import logging

'''
Class board is an instance of develop board.

The class will automatically initialize with configuration infomation in
config.json and overlay which is stored in module_name.bit.
'''


class board:
    def __init__(self) -> None:
        logging.info("Trying to load overlay...")
        self.ol = Overlay("dot.bit")
        self.ol.download()
        logging.info(self.ol.ip_dict)
        self.module = self.ol.shellSimple_0.io_host
        logging.info("Loading overlay ok.")

        logging.info("Loading configs...")
        with open("config.json", 'r') as f:
            data = json.load(f)

            self.ip_base_address = int(data['ip_base_address'], 16)
            self.register_base_address = int(data['register_base_address'], 16)
            self.register_size = int(data['register_size'], 16)
            self.memory_offset = int(data['memory_offset'], 16)
            self.length = int(data['length'], 16)

            self.op = data['op']
            for key in self.op.keys():
                self.op[key] = int(self.op[key])

        logging.info("Loading configs done.")
    
    # write_data intends to write data to memory
    # datalist contains all data; datalength is the bit number each datum occupy; datatype is 'weight' or 'input'
    # retval indicates : SUCCESS, if retval = 0; FAILURE, if retval < 0.
    def write_data(self, datalist: list, datatype: str, datalength = 8) -> int:
        begin_addr = self.ip_base_address
        if(datatype == "weight"):
            begin_addr += self.memory_offset
        
        # concatenate 8 8-bit number to a 64-bit number
        write_data = 0
        for i in range(0, len(datalist)):
            write_data  = write_data | datalist[i] << (datalength * i)
        
        logging.info("Starting to write data with type %s to memory at address %x" % (datatype, begin_addr))
        # if datalength = 8 and transmit 8 numbers
        self.module.write(begin_addr, np.int64(write_data))
        logging.info("Successfully wrote data to memory.")
        return 0
    
    # write_register intends to write data to register
    def write_register(self, type: str, data) -> int:
        reg_index = 0
        if type == 'op':
            pass
        elif type == 'addr':
            reg_index = 1
        elif type == 'length':
            reg_index = 2
        logging.info("Starting to write register%d." % reg_index)
        self.module.write(self.register_base_address + self.register_size * reg_index, np.int32(data))
        logging.info("Successfully wrote data to register.")
        return 0

    # start_process runs a command
    def start_process(self):
        # first write 1 to reg3, then write 0 to reg3
        self.module.write(self.register_base_address + self.register_size * 3, np.int32(1))
        self.module.write(self.register_base_address + self.register_size * 3, np.int32(0))
    
    # read reads data from MEMORY (store instruction must be executed before calling read)
    def read(self) -> int:
        return self.module.read(self.register_base_address + 2 * self.memory_offset) & 0xFFFF
    
    def load_input(self):
        # load input
        self.write_register('op', self.op['load_input'])
        self.write_register('addr', self.ip_base_address)
        self.write_register('length', self.length)
        self.start_process()
    
    def load_weight(self):
        # load weight
        self.write_register('op', self.op['load_weight'])
        self.write_register('addr', self.ip_base_address + self.memory_offset)
        self.write_register('length', self.length)
        self.start_process()
    
    def compute(self):
        # compute
        self.write_register('op', self.op['compute'])
        self.start_process()
    
    def store(self):
        # store
        self.write_register('op', self.op['store'])
        self.start_process()

    def run_test(self, input, weight) -> int:
        self.write_data([input], "input")
        self.write_data([weight], "weight")

        logging.info("Trying to load input...")
        self.load_input()

        logging.info("Trying to load weight...")
        self.load_weight()
        
        logging.info("Trying to compute...")
        self.compute()

        logging.info("Trying to store...")
        self.store()
        
        logging.info("Trying to read...")
        # read and return
        return self.read()
