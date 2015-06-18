account_holders = []
	user1 = {
	name: "Al",
	acct: "1234123412341234",
	pin: "1234",
	funds: "50"
	}
	user2 = {
	name: "Bob",
	acct: "5678567856785678",
	pin: "5678",
	funds: "8000"
	}
  user3 = {
	name: "Carl",
	acct: "9090909090909090",
	pin: "9090",
	funds: "1200"
	}
	
	account_holders.push(user1, user2, user3)

####### I don't know what I'm doing

#	puts "Enter your account number:"
 #    acct_num = gets.chomp.to_i
 #    if 
 #   account_holders.includes? acct_num
  #   	puts "Please enter your PIN"
  #   		acct_pin = gets.chomp.to_i
  #   	else
  #   		puts "Not a valid account number"
  #   	end
alance = 400
atm_balance = 1000
withdraw_amount = 0

# ATM Options Menu
questions = [ "1 - Check Balance", "2 - Withdraw Money", "3 - Cancel" ]
  def valid_question_input(user_question_input)
  	(1..question.count).includes?(user_question_input)
  end
puts %{
Please enter an option by its cooresponding number:
  }
questions.each { |q| puts q }
  input = gets.chomp
	is_valid? user_question_input(input)


  if option == questions[2]
    puts "Thanks. Please come again!"
  elsif option == questions[0]
    puts "Your balance is #{balance}."
  elsif option == questions[1]
    puts "How much would you like to withdraw?"
    withdraw_amount = gets.chomp.to_i
    if atm_balance < withdraw_amount
      puts "Sorry. ATM Out of Order"
    elsif withdraw_amount > balance
        puts "You do not have enough funds."
    else
      balance -= withdraw_amount
      puts %{
        Here is your #{withdraw_amount}. 
        Your balance is now #{balance}.
        Thankd you.
      }
      end
  end

