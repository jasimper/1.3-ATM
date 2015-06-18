account_holders = [ 
	{
	name: "Al",
	acct: 1234123412341234,
	pin: 1234,
	funds: 50
	}
	{
	name: "Bob",
	acct: 5678567856785678,
	pin: 5678,
	funds: 8000
	}
 {
	name: "Carl",
	acct: 9090909090909090,
	pin: 9090,
	funds: 1200
	}
]
	puts "Enter your account number:"
     acct_num = gets.chomp.to_i
     if 
     account_holders.includes? acct_num
     	puts "Please enter your PIN"
     		acct_pin = gets.chomp.to_i
     	else
     		puts "Not a valid account number"
     	end
  