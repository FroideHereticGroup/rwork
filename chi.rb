puts 'ユーザー名は？'

user = gets.chomp
userString = user.to_s
userLength = userString.length

if userLength == 0
  puts 'ユーザー名を入力してください'
elsif userLength > 0 && userLength < 4
  puts 'ユーザー名は4文字以上にしてください'
else
  puts '適切なユーザー名です'
end
