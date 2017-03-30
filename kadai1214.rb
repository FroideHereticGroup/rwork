#講義

module Process
  def check(subject)
    if subject > 100 || subject < 0
      sleep 1
      puts "異常な値が入力されました。","もう一度入力してください"
      exit
    end
  end

  def score(point)
    case point
    when 80..100 then "優"
    when 60..79 then "良"
    when 40..59 then "可"
    when 0..39 then "不可"
    end
  end
end

class Person
  include Process

  def initialize(name, math, eng, ave, total)
    @name = name
    @math = math
    @eng = eng
    @ave = ave
    @total = total
    @list = {}
  end

  #合計
  def sum
    @math + @eng
  end
  #平均
  def average
    sum / 2
  end
  #数学の評価
  def math_eval
    score(@math)
  end
  #英語の評価
  def eng_eval
    score(@eng)
  end
  #二科目平均の評価
  def ave_eval
    score(average)
  end
  #入力ck
  def math_check
    check(@math)
  end
  def eng_check
    check(@eng)
  end

  attr_accessor :name, :math, :eng, :ave, :total, :list
end

class Persons < Person
  def names
    if @list.size == 0
      *ary = @math, @eng, @ave, @total
    else
      *ary = @math, @eng, average, sum
    end
    @list[@name] = ary
  end
end



print "何人の情報を入力しますか："
ninzu = gets.to_i
person = Persons::new("名前", "数学", "英語", "平均", "合計")
person::names #ハッシュの生成

(1 .. ninzu).each do |i|
  print "#{i}人目の名前を入力してください："
  person::name = gets.chomp
  print "数学の点数を入力してください："
  person::math = gets.to_i
  person::math_check #値のチェック
  print "英語の点数を入力してください："
  person::eng = gets.to_i
  person::eng_check
  #ハッシュへデータの格納
  person::names

  puts "#{person::name}さんは数学：#{person::math}点(#{person::math_eval}),
        英語：#{person::eng}点(#{person::eng_eval}),
        全科目の平均点：#{person::average}(#{person::ave_eval}),
        合計点：#{person::sum}
        です。"
end

#データ確認用
person::list.each do |key, val|
  puts "#{key} => #{val}"
end

person::list.delete("名前")
p person::list

subject_total = person::list.map do |key, value|
  value[3]
end

p subject_total
