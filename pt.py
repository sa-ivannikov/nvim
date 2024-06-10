from unittest import TestCase

def add(a, b) -> int:
    print(a, b)
    return a + b


class TestAdd(TestCase):
    def test_add(self):
        self.assertEqual(add(1, 1), 2)
