class Fizzbuzz
	def fizz(i)
		print "fizz"	if i % 3 == 0
	end

	def buzz(j)
		print "buzz"	if j % 5 == 0
	end

	def fizzbuzz(k)
		print "fizzbuzz"	if k % 15 == 0
	end
end

process = Fizzbuzz.new
print "処理の数字を入力してください："
num = gets.to_i

