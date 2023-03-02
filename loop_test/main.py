from test import test
import logging
# from datetime import datetime

def main():
    # now = datetime.now().strftime('%Y-%m-%d_%H_%M_%S')
    logging.basicConfig(level=logging.INFO)
    # logging.basicConfig(filename='log\loop_test_%s.log' % now, level=logging.DEBUG)
    test()


if __name__ == "__main__":
    main()