puts "Welcome to Mastermind game!"
puts ""

colors = ['RED', 'ORANGE', 'YELLOW', 'GREEN', 'WHITE', 'BLUE', 'INDIGO', 'VIOLET']
puts ""
secret_code = colors.sample(4)
#puts "Secret Code: #{secret_code}"
puts "Secret Code: [ ? , ? , ? , ? ]"
puts ""
#puts secret_code.size

guesses = Array.new(4)
#puts guesses.length

puts "Colors: [ RED   | ORANGE | YELLOW | GREEN"
puts "          WHITE | BLUE   | INDIGO | VIOLET ]"
puts "Please enter whole color name."
puts ""
turn = 1
12.times do 
  puts "TURN #{turn}"
  count = 1
  for i in 0..guesses.length-1 do
    print "Enter your colour guess: [#{count}] "
    guesses[i] = gets.chomp.upcase
    count += 1
  end
  puts ""
  print "Your guesses: #{guesses}"
  puts ""
  if secret_code == guesses
    puts "You successfully breaks the secret code!"
    puts "Secret Code: #{secret_code}"
    break
  else
    #check for R position (correct color and position)
    #check for W position (right color, wrong position)
    r_counter = 0
    w_counter = 0
    for i in 0..secret_code.length-1 do
      if secret_code[i] == guesses[i]
        r_counter += 1
      elsif secret_code[i] != guesses[i] && secret_code.include?(guesses[i])
        w_counter += 1
      end
    end
    
    puts "Feedback: #{r_counter}R #{w_counter}W"
    puts ""
    turn += 1
    if(turn > 12)
      puts "You failed to break the secret code!"
    end
  end
end