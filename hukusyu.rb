#復習
#対話モード　irb
#簡潔に書くには irb --simple-prompt　とかく

=begin
puts "Hello, Ruby!"
puts "Hello,", "Ruby!"	#ダブルクオーテーションで区切ると改行になる
puts "Hello, " + "Ruby!"	#プラスで分けると最初のやつと同じ意味
=end

# a = 100
# puts "aの値は#{a}です！" 


# while true
# 	print "\n"
# 	print "値を入力してください："
# 	a = gets.to_i
# 	if a == 0
# 		exit
# 	end
		
# 	if(a > 10)
# 		puts "10より大きいです"
# 	elsif (a < 10)
# 		puts "10より小さいです"
# 	else
# 		puts "10です"
# 	end
# 	puts "終了する場合は0を押してください"
# end

# #配列
# abc = Array.new(5)	#Arrayオブジェクトから配列を生成するときは長さを指定できる
# p abc
# abc[5] = nil		#前で指定しているが増やすことも可能

# #配列の長さはどちらでも確認できる
# puts abc.size
# puts abc.length


# #ハッシュ＆シンボル
# sym = :foo
# sym2 = :"foo"	#上と同じ意味
# puts sym == sym2
# puts sym === sym2

# #シンボルを用いたハッシュ
# simple = {name: "yamaguchi", name2: "山口"}	#簡略した書き方
# simple2 = {:name => "yamaguchi", :name2 => "やまぐち"}

# #ハッシュの取り出し
# simple.each do |key, value|
# 	puts "#{key}: #{value}"
# end

#正規表現　書き方
# /パターン/ =~ マッチングしたい文字列
# name = ["尾林", "小林", "山口", "島田", "椛島"]
# print "名前に林がつく人は"
# name.each do |name|
# 	if /林/ =~ name
# 		print name
# 	end
# end

# #if~elsif~elseの反対unless
# a = 30
# b = 20
# # if a > b
# # 	puts "aの方が大きいです"
# # else
# # 	puts "bの方が大きいです"
# # end
# puts "aの方が大きいです" if a > b 	#修飾子としてかくことができる

# #繰り返し
# sum = 0
# for a in 1 .. 5
# 	sum += a
# end
# puts sum

# #ブロックメソッド
# def myloop
# 	while true
# 		yield
# 	end
# end

# num = 1
# myloop do
# 	puts "num is #{num}"
# 	break if num > 10
# 	num += 2
# end

# #キーワード引数
# def volume(x:, y:2, z:4)
# 	return x * y * z
# end

# puts volume(x: 2)
# puts volume()	#xが定義されていないのでエラーになる


class Helloworld
	@@count = 0

	def Helloworld.count
		@@count
	end

	def initialize(name = "ruby")
		@name = name
	end

	def hello
		puts "hello,#{@name}"
		@@count += 1
	end

	attr_accessor :name2
end

ruby = Helloworld.new("あほちん")
python = Helloworld.new("ばっかちん")
ruby.hello
ruby.hello
python.hello
p Helloworld.count