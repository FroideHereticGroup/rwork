#平均身長を求めるプログラム

hito = [181, 185, 172, 156]

n = hito.size
puts "hitoには#{n}人分のデータがあります。"

total = 0
n.times do |i|
  total += hito[i]
end

puts "全員の合計身長は#{total}です。"
puts "平均身長は#{total/n}です。"
