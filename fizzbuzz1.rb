# FizzBuzz case

# (1..100).each do |n|
#   puts case 0
#   when n % 15 then :FizzBuzz
#   when n % 3 then :Fizz
#   when n % 5 then :Buzz
#   else n
#   end
# end

for a in 1 .. 100
  if a % 15 == 0
    puts :FizzBuzz
  elsif a % 3 == 0
    puts :Fizz
  elsif a % 5 == 0
    puts :Buzz
  else
    puts a
  end
end
