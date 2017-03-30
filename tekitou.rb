#殴り書き用


=begin
amari = 10 % 2

if amari != 0 then
  puts "割り切れませんでした"
  puts "余りは#{amari}です。"
else
  puts "割り切れました。余りは#{amari}です。"
end
=end

=begin
sum = 0
project = "Apple"

case project
when "Melon", "Banana" then
  sum += 500
when "Apple", "Lemon" then
  sum += 150
end

puts "料金は#{sum}です。"
=end

=begin
array = Array.new(3){"red"}
puts array
=end


puts "じゃんけん"
sleep 1
r = rand(3)
value = ["グー", "パー", "チョキ"]
puts value[r]
