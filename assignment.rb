acct_holders = [
  {
  name: "Al Anderson",
	acct: "1234",
	pin: "1234",
	funds: 50
	},
  {
	name: "Bob Barker",
	acct: "5678",
	pin: "5678",
	funds: 8000
	},
  {
	name: "Carl Carson",
	acct: "9090",
	pin: "9090",
	funds: 1200
	}
]
atm_balance = 7000
withdraw_amount = 0

# Login
current_acct = ""
while current_acct == ""
  puts "Please enter your account number"
    current_acct = gets.chomp
end
current_pin = ""
while current_pin == ""
  puts "Please enter your PIN"
    current_pin = gets.chomp
end

current_user = nil
  acct_holders.each do |user|
    if user[:acct] == current_acct && user[:pin] == current_pin
    current_user = user
    end
  end

# ATM Options Menu
if current_user
  puts "Welcome, #{current_user[:name]}."

option_menu = ["1. Check Balance", "2. Withdraw funds", "3. Cancel"]
choice = nil
  until (1..option_menu.length).include?(choice)
    choice = puts "Please enter an option by its cooresponding number:\n#{option_menu.join(" | ")}"
    choice = gets.to_i
  end
# ATM Actions
  if choice == 3
    puts "Thanks. Please come again!"
  elsif choice == 1
    puts "Your balance is #{current_user[:funds]}."
  elsif choice == 2
    puts "How much would you like to withdraw?"
    withdraw_amount = gets.chomp.to_i
    if atm_balance < withdraw_amount
      puts "Sorry. ATM Out of Order"
    elsif withdraw_amount > current_user[:funds]
      puts "You do not have enough funds."
    else current_user[:funds] -= withdraw_amount
      puts %{
        Here is your #{withdraw_amount}.
        Your balance is now #{current_user[:funds]}.
        Thank you.
      }
    end
  end
else
  puts "This information is incorrect."
end
