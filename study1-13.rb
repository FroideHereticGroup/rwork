# b = 1..3
# for a in b
#   puts a
# end
def fizzbuzz(num)
  (1..num).each do |i|
    puts i % 15 == 0 ? :fizzbuzz : i % 3 == 0 ? :fizz : i % 5 == 0 ? :buzz : i
  end
end

num = ["a", "b", "c", nil, "d"]
# num.each do |i|
#   puts i
# end

puts "nilをなくす"
num.compact #nilをなくす
p num

num.compact!  #破壊的メソッド
p num

#
# puts "先頭に要素を加える"
# num.unshift("z")  #先頭に要素を加える
# p num
# puts "先頭の要素を除く"
# num.shift #先頭の要素を除く
# p num
#
# puts "末尾に要素を加える"
# num << 10   #末尾に要素を加える
# p num
# num.push(20)
# p num
# puts "末尾の要素を取り除く"
# num.pop #末尾の要素を取り除く
# p num
# puts "要素aを取り除く"
# num.delete("a")
# p num
#
# num.unshift("a")
# p num
#
# puts "要素指定で取り除く"
# num.delete_at(2)
# p num
#
# item = [1,2,3]
# puts "配列の連結"
# num.concat(item)
# p num
#
# puts "3番目から4つをnilに置き換えて、nilを取り除く"
# num[4, 4] = nil
# p num
# num.compact!  #破壊的メソッド
# p num
#
# puts "条件が真のとき要素を取り除く"
# num.delete_if{|i| i == "a" || i == "b"}
# p num
#
# puts "配列を元に戻した"
# itm = ["a", "b"]
# itm.concat(num)
# p itm
# num = itm
# p num
#

puts "いろいろメソッドくっつけてみた"
item = Array.new(3).fill(2).concat(num).reject!{|k| k == 2}
p item
p item == num
