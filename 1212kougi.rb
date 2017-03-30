#講義
a = Range.new(1,10)
b = a.to_a #=> [1,2,3,4,5,6,7,8,9,10]
p b

# def rect(a, b = 1)
#   a * b
# end
#
# p rect(2)
# p rect(10, 1)

# #点数に応じて評価するプログラム
# def check_point(value)
#   case value
#   when 80..100 then "秀"
#   when 60..79 then "優"
#   when 40..59 then "良"
#   when 25..39 then "可"
#   when 1..24 then "不可"
#   else "データ異常"
#   end
# end
#
# while true
#   print "始めますか？　1:はい, 0:いいえ　："
#   num = gets.to_i
#
#   if num == 0
#     exit
#   else num == 1
#     puts "成績を開示します。"
#     sleep(1)
#     print "数学："
#     math = gets.to_i
#     print "国語："
#     jap = gets.to_i
#     print "英語："
#     eng = gets.to_i
#
#     sleep(0.5)
#
#     puts "あなたの成績は"
#     puts "数学：#{check_point(math)}","英語：#{check_point(jap)}","国語：#{check_point(eng)}"
#   end
# end

# # #FizzBuzz問題
# print "繰り返す値を入力してください："
# num = gets.to_i
# a = Range.new(1, num) #範囲オブジェクトを生成
# a.each do |i|
#   puts case 0
#   when i % 15 then :FizzBuzz
#   when i % 3 then :Fizz
#   when i % 5 then :Buzz
#   else i
#   end
# end

# # FizzBuzz他の回答
# num = gets.to_i
# (1..num).each do |i|
#   s = 'Fizz' if i % 3 == 0
#   s = 'Buzz' if i % 5 == 0
#   s = 'FizzBuzz' if i % 15 == 0 #後置ifの場合は評価の順番が違うので注意
#   puts s || i
# end

(1..100).each do |num|
  puts num % 15 == 0 ? "fizzbuzz" : num % 3 == 0 ? "fizz" : num % 5 == 0 ? "buzz" : num
end
