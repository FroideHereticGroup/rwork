#講義

class Person
  # def initialize(name, math, eng, ave, total)
  #   @name = name
  #   @math = math
  #   @eng = eng
  #   @ave = ave
  #   @total = total
  # end

  def names(name, math, eng, ave, total)
    list = {}
    name = name
    *ary = math, eng, ave, total
    list[name] = ary
  end

  def score(point)
    case point
    when 80..100 then "優"
    when 60..79 then "良"
    when 40..59 then "可"
    when 0..39 then "不可"
    end
  end

  def check(subject)
    if subject > 100 || subject < 0
      sleep 1
      puts "異常な値が入力されました。","もう一度入力してください"
      redo
    end
  end

  attr_accessor :name, :math, :eng, :names, :list
end

print "何人の情報を入力しますか："
ninzu = gets.to_i
person = Person.new   #チェックオブジェクトの作成
names = Array.new(ninzu) {[]} #2次元配列
names[0] = ["名前", "数学", "英語", "平均", "合計"]

(1 .. ninzu).each do |i|
  print "あなたの名前を入力してください："
  name = gets.chomp
  print "数学の点数を入力してください："
  math = gets.to_i
  person::check(math) #値のチェック
  print "英語の点数を入力してください："
  eng = gets.to_i
  person::check(eng)

  sum = math + eng
  ave = sum / 2
  puts "#{name}さんは数学：#{math}点(#{person::score(math)}),
        英語：#{eng}点(#{person::score(eng)}),
        全科目の平均点：#{ave}(#{person::score(ave)}),
        合計点：#{sum}
        です。"
  names[i] = [name, math, eng, ave, sum]
end

print "\n"
sleep 1
p names #配列の値の確認

math_sum = 0
eng_sum = 0
(1..ninzu).each do |j|
  math_sum += names[j][1]
  eng_sum += names[j][2]
end
ave_math = math_sum / ninzu
ave_eng = eng_sum / ninzu

print "\n"
sleep 2
puts "#{ninzu}人の平均点は, 数学：#{ave_math}, 英語：#{ave_eng}です。"
puts "#{ninzu}人の合計点は, 数学：#{math_sum}, 英語：#{eng_sum}です。"

sleep 1

if ninzu > 5
  top_hash = Hash.new
  (1..ninzu).each do |k|
    top_hash.store(names[k][0], names[k][4])
  end
  top = top_hash.sort{ |a, b| b[1] <=> a[1] } #降順に並び替え
  puts "Top5は,"
  (top.slice(0,5)).each do |key, value|
    puts "#{key}さん#{value}点"
  end
  puts "です。"
# else  ninzu <= 5
end
