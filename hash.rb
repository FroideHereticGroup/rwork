# Hashクラス

h = Hash.new do |hash, key|
  hash[key] = key.upcase
end

h["a"] = "b"
p h["a"]
p h["s"]
p h["t"]
p h.fetch("v", "none")



# String#scan
"asdfasdr4asad".scan(/(.)(a)/) do |ary|
  p ary
end

"asdfasdr4asad".scan(/(.)(a)/) do |a, b|
  puts a+"+"+b
end
