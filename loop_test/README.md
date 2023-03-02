# Python script for testing


# Open in terminal and use command sh start-up.sh to start test. Refer logs in directory log to check what's wrong.


# You can modify test cases in test.py.


## Details:

### 1.Config
In 启明星 ZYNQ 之 PYNQ 开发指南.pdf, the book used MMIO library to visit memory, while in the example given by ZH, it wrote data directly to the module. Now that I'm not clear which management method of memory we would utilize, I supposed that I can write directly to the module.
Above that, the memory start address is named 'ip_base_address', with the value 0x40000000, and register base address is named 'register_base_address' with the value 0x00000000, as agreed by ZH.

### 2.Implement
What I do is virtually write input and weight data to memory, given an address. And then I wirte 4 commands(load_input, load_weight, compute, store) sequentially and run them one after another. Finally I read the result from memory. The question is, where should I read result. Here I use a constant memory_offset = 32 (8 * register_size), and assume that 0x40000000-(0x40000000 + memory_offset) is to store input, 
(0x40000000 + memory_offset)-(0x40000000 + 2 * memory_offset) is to store weight,
(0x40000000 + 2 * memory_offset)-MAX_ADDR is to store result.