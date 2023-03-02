import unittest
import logging
from board import board

class Mytest(unittest.TestCase):
    def __init__(self) -> None:
        super().__init__()
        self.board = board()
    
    # def setUp(self) -> None:
    #     logging.info("===== setUp =====")

    # def tearDown(self) -> None:
    #     logging.info("===== tearDown =====")

    @classmethod
    def setUpClass(cls) -> None:
        logging.info('=== Test Started... =====')

    @classmethod
    def tearDownClass(cls) -> None:
        logging.info('=== Test Finished! =====')

    def test_1(self):
        logging.info("Test 1")
        result = 0
        input = 1
        weight = 1
        result = self.board.run_test(input, weight)
        self.assertEqual(result, input + weight)

    def test_2(self):
        logging.info("Test 2")
        result = 0
        self.assertEqual(result, 0)


def test():
    suite1 = unittest.TestLoader().loadTestsFromTestCase(Mytest)
    suite = unittest.TestSuite([suite1]) # you can add another class for testing here
    unittest.TextTestRunner(verbosity=2).run(suite)