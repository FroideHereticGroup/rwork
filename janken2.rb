#じゃんけんをするプログラム

puts "じゃんけんを始めます"
sleep 1

#プレイヤーの入力
puts "あなたは何を出しますか？"
puts "1 グー"
puts "2 チョキ"
puts "3 パー"
janken = gets.to_i

#ロボットの入力
r = rand(3) + 1
case r
when 1
  puts "ロボットはグーを出した"
when 2
  puts "ロボットはチョキを出した"
when 3
  puts "ロボットはパーを出した"
end

sleep 1

#結果の判定
case janken
when 1
  case r
  when 1
    puts "引き分けです"
  when 2
    puts "あなたの勝ちです"
  when 3
    puts "あなたの負けです"
  end
when 2
  case r
  when 1
    puts "あなたの負けです"
  when 2
    puts "引き分けです"
  when 3
    puts "あなたの勝ちです"
  end
when 3
  case r
  when 1
    puts "あなたの勝ちです"
  when 2
    puts "あなたの負けです"
  when 3
    puts "引き分けです"
  end
else
  puts "あなたは何も出さなかった"
  puts "あなたの負けです"
end
