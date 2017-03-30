# ruby 練習

# (1..100).each do |a| # for文を使うよりもこちらの方がrubyらしいだそう
#   if a % 15 == 0
#     puts :FizzBuzz
#   elsif a % 3 == 0
#     puts :Fizz
#   elsif a % 5 == 0
#     puts :Buzz
#   else
#     puts a
#   end
# end

range = 1 .. 100
range.each do |a|
  puts case 0
  when a % 15 then :FizzBuzz
  when a % 3 then :Fizz
  when a % 5 then :Buzz
  else a
  end
end
