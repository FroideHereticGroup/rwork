(5...9).each_with_index do |key, val|
  puts "#{val} #{key}"
end

p 100.downto(90).select{|x| x%2==0}

#deleteメソッドで指定した文字列が削除される
puts "ruby on rails".delete("rails")

#インスタンスにメソッドがあるかどうか
#methodsメソッドの返り値はArrayオブジェクトになる
a = Array.new
a.methods.include?(:empty?)
a.methods.include?(:nil?)
a.methods.instance_of?(Array)
a.instance_of?(Array)

b = String.new
b.methods.include?(:clear)
b.methods.instance_of?(String)
b.instance_of?(String)

#配列に同じものが含まれる場合
arr = [1,2,3,4,6]
arr2 = [2,3,5,6,1]
#最初の配列を基準に重複するもの以外があれば配列に入れて返す
p arr | arr2
p arr2 | arr
#最初の配列を基準に共通する値を配列として返す
p arr & arr2
p arr2 & arr
#共通するものを削除した配列を返す
p arr - arr2
p arr2 - arr
#最初の配列に後の配列の値を順にpushする
p arr + arr2
p arr2 + arr


#文字列のscanメソッド
s = "of the people, by the people, for the people"
hash = Hash.new(0)  # 0でインスタンスを生成しないと+=のところでnilclassになる
s.scan(/\w+/) { |word| hash[word] += 1 }
p hash["the"]
p hash["people"]
p hash
