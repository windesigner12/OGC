def calculate_simple_interest(principal, rate, time):
    """
    Calculate simple interest.

    :param principal: Initial amount of money
    :param rate: Annual interest rate (in percent)
    :param time: Time period in years
    :return: Simple interest
    """
    return (principal * rate * time) / 100


if __name__ == "__main__":
    try:
        p = float(input("Enter the principal amount: "))
        r = float(input("Enter the interest rate (in %): "))
        t = float(input("Enter the time period in years: "))

        interest = calculate_simple_interest(p, r, t)
        print(f"Simple Interest: {interest:.2f}")
    except ValueError:
        print("Please enter valid numeric values.")
