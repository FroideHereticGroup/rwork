#ruby復習
#三項演算子とメソッドを用いたfizzbuzzの勉強
#三項演算子は一行にまとめて書くことができる


def FizzBuzz(num)
  (1..num).each do |i|
    puts i % 15 == 0 ? "fizzbuzz" : i % 3 == 0 ? "fizz" : i % 5 == 0 ? "buzz" : i
  end
end

FizzBuzz(100)
