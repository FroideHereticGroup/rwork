#12/13

#ファイルオープン
# File.open("1212.rb") do |file|
#   file.each_line do |line|
#     puts line
#   end
# end

# file = File.open("1212.rb")
# begin
#   file.each_line do |line|
#     puts line
#   end
# ensure
#   file.close
# end

# #ソートのやり方
# array = ["Ruby", "Perl", "PHP", "Python"]
# sorted = array.sort{|a,b| b.length <=> a.length} #文字列の長い順に並び替え
# p sorted

# #ブロック　yield
# def myloop
#   while true
#     yield
#   end
# end
#
# num = 1
# myloop do
#   puts "num is #{num}"
#   break if num > 10
#   num *= 3
# end

# #ブロックの結果を得る
# def total(from, to)
#   result = 0
#   from.upto(to) do |num|
#     if block_given?
#       result += yield(num)
#     else
#       result += num
#     end
#   end
#   return result
# end
#
# p total(1,10)
# p total(1,10){|num| num ** 2}

# #配列
# lang = %w(Ruby Perl Python Scheme Pike REBOL)   #空白行を除く文字列を配列として取得する
# p lang

# lang2 = %i(Ruby Perl Python Scheme Pike REBOL)   #シンボルの配列を取得する
# p lang2

# puts lang[3..5] #指定した番号から順に取り出す
# puts lang[1, 4] #指定した番号から次の番号分取り出す

# #配列を末尾から取り出していく
# array = [1,2,3,4,5,6,7,8,9]
# while array.size != 0
#   puts array.pop
# end
# p array
