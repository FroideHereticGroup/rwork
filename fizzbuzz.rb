#fizzbuzz

def fizzbuzz num
	(1..num).each do |i|
		puts i % 15 == 0 ? "fizzbuzz" :
		 	 i % 3  == 0 ? "fizz" :
		 	 i % 5  == 0 ? "buzz" : 
		 	 i
	end

end

print "処理する数を入力してください："
num = gets.to_i
fizzbuzz num