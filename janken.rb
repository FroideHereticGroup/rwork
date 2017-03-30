
puts "じゃんけん"
sleep 2
r = rand(3)+1
=begin
if r == 1
  puts "グー"
elsif r == 2
  puts "チョキ"
else
  puts "パー"
end
=end
#case文を使うと…
case r
when 1
  puts "グー"
when 2
  puts "チョキ"
when 3
  puts "パー"
end
