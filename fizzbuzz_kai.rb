#三項演算子練習

print "値を入力してください："
num = gets.chomp.to_i
print "\n"

(1..num).each do |i|
  puts i % 3 == 0 ? "fizz" : i % 5 == 0 ? "buzz" : i % 15 == 0 ? "fizzbuzz" : i
end
