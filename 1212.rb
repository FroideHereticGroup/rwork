#　12/12　基本

# class Hello
#   class << self #クラスメソッド
#     def hello(name)
#       puts "#{name} said hello !!"
#     end
#   end
# end
#
# Hello.hello("aho")

# def HelloWorld.hello(name)    #エラーになる => クラスの中にいれれば解決
#   puts "#{name} said hello !!"
# end
#
# HelloWorld.hello("juho")

# class HelloWorld    #これもエラーになる => 治った！
#   def self.hello(name)
#     puts "#{name} said hello"
#   end
# end
#
# HelloWorld.hello("aho")


#アクセスメソッド ~使い方がよくわからん~
#　いわゆる、もっと簡単に書けるJavaのgetter, setterのこと


# #特異クラス
# str1 = "ruby"
# str2 = "ruby"
#
# class << str1
#   def hello
#     "Hello, #{self}"
#   end
# end
#
# puts str1::hello  #str1.helloも同じ


# #moduleのextend
# module Edition
#   def edition(n)
#     "#{self}#{n}を入力しました。"
#   end
# end
#
# str = "あなたは"
# str.extend(Edition)
# print "数字を入力してください："
# a = gets.to_i
# puts str.edition(a)

# 例外処理

#ブロックの使われ方
# sum = 0
# outcome = {"参加費" => 1000, "ストラップ代" => 1000, "懇親会会費" => 4000}
# outcome.each do |pair|
#   sum += pair[1]  #ハッシュの値を指定、0だとキーを指定する
# end
#
# puts "合計：#{sum}"

# #ファイルの展開
# file = File.open("rei1212.rb")
# file.each_line do |line|
#   puts line
# end
# file.close

# #上を書き換えると closeがなくなっている！
# File.open("fizzbuzz.rb") do |file|
#   file.each_line do |line|
#     puts line
#   end
# end

# # #例外処理を加えると
# file = File.open("fizzbuzz1.rb")
# begin
#   file.each_line do |line|
#     puts line
#   end
# ensure  #後処理
#   file.close
# end

#
