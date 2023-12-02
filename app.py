import sys
import calc

def add_two_values(x, y):
    try:
        result = calc.add2(float(x), float(y))
        return result
    except ValueError:
        return None

def main():
    if len(sys.argv) != 3:
        print("\nIncorrect number of arguments. Usage: 'add2vals X Y'")
        sys.exit(1)

    value1, value2 = sys.argv[1], sys.argv[2]

    result = add_two_values(value1, value2)

    if result is not None:
        print(f"\nThe result of adding {value1} and {value2} is: {result}\n")
        sys.exit(0)
    else:
        print("\nInvalid input. Please provide numeric values for addition.\n")
        sys.exit(1)
