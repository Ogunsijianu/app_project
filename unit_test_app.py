# unittest_app.py
import unittest
import app

class TestApp(unittest.TestCase):

    def test_add(self):
        self.assertEqual(app.add(2, 3), 5)  # This test should pass

    def test_subtract(self):
        self.assertEqual(app.subtract(5, 3), 2)  # This test should pass

    def test_multiply(self):
        self.assertEqual(app.multiply(2, 3), 6)  # This test should pass

    def test_divide(self):
        self.assertEqual(app.divide(6, 2), 3)  # This test should pass
        self.assertEqual(app.divide(6, 0), 3)  # This test should fail

if __name__ == '__main__':
    unittest.main()
