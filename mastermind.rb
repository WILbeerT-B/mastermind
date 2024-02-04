colors = ['RED', 'ORANGE', 'YELLOW', 'GREEN', 'WHITE', 'BLUE', 'INDIGO', 'VIOLET']
puts ""
secret_code = colors.sample(4)
puts "Secret Code: #{secret_code}"

#puts secret_code.size

guesses = Array.new(4)
#puts guesses.length

puts "[1] RED   | [2] ORANGE | [3] YELLOW | [4] GREEN"
puts "[5] WHITE | [6] BLUE   | [7] INDIGO | [8] VIOLET"
puts ""
count = 1
for i in 0..guesses.length-1 do
  print "Enter your colour guess: [#{count}] "
  guesses[i] = gets.chomp
  count += 1
end
puts ""
print "Your guesses: #{guesses}"
puts ""
if secret_code == guesses
  puts "You successfully breaks the secret code!"
  puts "Secret Code: #{secret_code}"
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
  
  p r_counter
  p w_counter

end