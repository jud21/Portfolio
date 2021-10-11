from IPython.display import clear_output

class InvestProperty():
    """
    This is a calculator to generate your real estate investment profits.
    """
    def __init__(self, nums):
        self.nums = {}

    def incomeMethod(self):
        monthly_income = input('What is your monthly income?')
        if monthly_income.isdigit():
            monthly_income = int(monthly_income)
        else:
            print("Enter your monthly income as just an integer")
            monthly_income = input('What is your monthly income?')
        total_income = monthly_income * 12

    def investMethod(self):
        house_worth = input("What is your house's approximate worth? ")
        if house_worth.isdigit():
            house_worth = int(house_worth)
        else:
            print("Enter your home value as just an integer.")
            house_worth = input(int("What is your house's approximate worth? "))

        down_pay = input("What is your down payment? ")
        if down_pay.isdigit():
            down_pay = int(down_pay)
        else:
            print('Enter your down payment as just an integer. ')
            down_pay = int(input("What is your down payment?" ))

        close_percent = input("What is your closing cost percentage?")
        if close_percent.isdigit():
            close_percent = int(close_percent / 100)
        else:
            print('Enter your closing cost percentage as just an integer.')
        close_cost = (house_worth * close_percent)

    def costsMethod(self):
        clear_output()
        if house_worth == down_pay:
            monthly_payment = None
        else:
            userTalk = input("Over how many years are you paying off your mortgage?")
            if userTalk.isdigit():
                monthly_payment = int((((house_worth - down_pay) / userTalk) / 12))
            else:
                print("Enter your years as just an integer.")

        insurance = int(input('What do you pay monthly for insurance?'))
        if insurance.isdigit():
            insurance = int(insurance)
        else:
            print('Enter your monthly insurance as just an integer.')
            insurance = int(input("What do you pay monthly for insurance? "))

        taxes = int(input("What are your montly taxes? "))
        if taxes.isdigit():
            taxes = int(taxes)
        else:
            print('Enter your taxes as just an integer. ')
            down_pay = int(input("What are your monthly taxes? "))

    def OhYeahAllComingTogetherNow(self):
        clear_output()
        profit = total_income - (monthly_payment + insurance + taxes)
        print(f'Your profit for the year is ${profit}')


def run():
    connect = InvestProperty({})
    talk = print(input('Calculate for your investment? Type yes or no.'))
    if talk.lower() == 'yes':
        connect.incomeMethod()
        connect.investMethod()
        connect.costsMethod()
        connect.OhYeahAllComingTogetherNow()
    if talk.lower() == 'no':
        break
    else:
        print('Not a valid response.')