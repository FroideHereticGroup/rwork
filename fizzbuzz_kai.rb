#三項演算子練習


(1..100).each do |i|
  puts i % 3 == 0 ? "fizz" : i % 5 == 0 ? "buzz" : i % 15 == 0 ? "fizzbuzz" : i
end
