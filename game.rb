#探検ゲームのプログラム
#乱数を使って道を変えてみる 左、真ん中、右のところをランダムで変数にしたらおｋ
#配列を使って改良してみる

scene = "opening"
puts "勇者たちの冒険(洞窟)"
sleep 2

while true
  case scene
  
  when "opening"
    puts "三本の分かれ道だ。どこ進もう…。"
    sleep 1
    puts "1 左"
    puts "2 真ん中"
    puts "3 右"
    player = gets.to_i  #ただの選択肢

    player = rand(3) + 1 #選んだ選択肢の分岐
    case player
    when 1
      scene = "left"
    when 2
      scene = "center"
    when 3
      scene = "right"
    end

  when "left"
    puts "あっ！奥に何かがある…"
    sleep 1
    puts "と思ったら足を滑らせて崖から落ちてしまった。"
    puts "GAME OVER"
    exit

  when "center"
    puts "しばらく歩いていると…"
    sleep 1
    puts "元の場所に戻ってしまった"
    scene = "opening"

  when "right"
    puts "奥へ進むと…"
    sleep 1
    puts "宝箱を見つけた！"
    puts "どうしようか…"
    puts "1 開ける"
    puts "2 開けない"
    puts "3 ぶっ壊してみる"
    player2 = gets.to_i
    case player2
    when 1
      puts "宝箱はミミックだった"
      puts "勇者たちは食べられてしまった"
      puts "GAME OVER"
      exit
    when 2
      puts "宝箱をあけずに進むと、出口戻ってしまった"
      puts "冒険を続ける？"
      sleep 1
      puts "1 続ける"
      puts "2 やめる"
      player3 = gets.to_i
      case player3
      when 1
        scene = "opening"
      when 2
        puts "勇者たちはお家に帰った"
        puts "GAME OVER"
        exit
      end
    when 3
      scene = "ending"
    end

  when "ending"
    puts "宝箱はミミックだった！"
    puts "ぶっ壊した拍子にミミックは気絶した。"
    sleep 2
    puts "猛攻をしかけ、ミミックを倒した。"
    sleep 3
    puts "まばゆい光が溢れ出す"
    sleep 2
    puts "勇者たち財宝を手に入れた"
    puts "congratulation!!!!"
    exit
  end
end
