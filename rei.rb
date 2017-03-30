#条件文
=begin
print "数を入力してください："
a = gets.to_i

if a >= 100
  puts "#{a} is greater than 100"
else
  puts "#{a} is smaller than 100"
end
=end

#繰り返しwhile1
=begin
i = 1
while i <= 10
  print i, "\n"　# macではバックスラッシュでうつ
  i += 1 # i++でもおｋ
end
=end

#繰り返しwhile2
=begin
sum = 0
i = 1
while i <= 5
  sum += 1
  i += 1
  puts sum
end
=end

#繰り返しtime
=begin
10.times do
  puts "Hello"
end
=end

#繰り返しfor1
=begin
sum = 0
for i in 1..5
  sum += 1
  print "#{sum}\n"
end
=end

#繰り返しfor2
=begin
names = ["a","b","c","d"]
for name in names
  puts name
end
=end

#繰り返しuntil
=begin
sum = 0
i = 1
until sum >= 10
  sum += 1
  i += 1
  puts sum
end
=end

#繰り返しeach
=begin
sum = 0
(1..10).each do |i|
  sum += i
end
puts sum
=end

#繰り返しloop
=begin
i = 0
loop do
  i += 1
  puts i
  if i == 100
    break
  end
end
=end

#クラス
=begin
class Car
  def dispClassname
    puts "car class"
  end

  def dispString(str)
    puts str
  end
end

car = Car.new
car.dispClassname
car.dispString("crown")
=end

#クラス　インスタンス変数
=begin
class Car
  def setName(str)
    @name = str
  end

  def dispName()
    puts @name
  end
end

car1 = Car.new
car1.setName("crown")
car1.dispName #カッコはあってもなくてもおｋ

car2 = Car.new
car2.setName("sarf")
car2.dispName
=end

#クラス　initializeメソッド
=begin
class Car
  def initialize(carname="未定義")
    @name = carname
    puts carname
  end
end


car1 = Car.new("civic")
car2 = Car.new()
car3 = Car.new("crown")
=end

#クラス　アクセスメソッド
=begin
class Car
  def initialize(carname = "")
    @name = carname
  end


  def getName()
    return @name
  end

  def setName(newName)
    @name = newName
  end
   邪魔くさい
  attr_accessor :name    #更新も参照も行える
end


car = Car.new()
car.name = "civic"
puts car.name
=end

#モジュール　関数のように使う
=begin
module Suuchi
  def minValue(x,y)
    if x<y
      return x
    else
      return y
    end
  end

  def maxValue(x,y)
    if x<y
      return y
    else
      return x
    end
  end

  module_function :minValue
  module_function :maxValue
end

puts Suuchi.minValue(10,2)
puts Suuchi.maxValue(20,10)


include Suuchi # includeすると以降メソッドのように使わなくてもいい

puts minValue(100,200)
puts maxValue(100,200)
=end

#モジュール　classにincludeして使う
#モジュールはインスタンスを持つことができない
#また継承することができない
=begin
module Suuchi
  def minValue(x,y)
    if x<y
      return x
    else
      return y
    end
  end

  def maxValue(x,y)
    if x<y
      return y
    else
      return x
    end
  end

  module_function :minValue
  module_function :maxValue
end

class Test
  include Suuchi

  def dispValue(x,y)
    min = minValue(x,y)
    max = maxValue(x,y)

    puts "二つの値#{x}と#{y}の中で小さい値は#{min}です"
    puts "二つの値#{x}と#{y}の中で大きい値は#{max}です"
  end
end

test = Test.new
test.dispValue(100,200)
=end

#アクセス制限
=begin
class Car
  def accele(acceletime)
    puts "アクセルを踏みました"
    puts "スピードは#{calcspeed(acceletime)}です。"
  end

  public :accele

  def brake
    puts "ブレーキを踏みました"
  end

  public :brake

  def calcspeed(acceletime)
    return acceletime * 10
  end

  private :calcspeed
end

car = Car.new
car.accele(10)
car.calcspeed(10)
=end

#三項演算子
=begin
print "あなたの点数を入力してください："
result = gets.to_i
frag = result > 50 ? "合格" : "不合格"

puts frag
=end

#式修飾
=begin
num = 20
pref = "Tokyo"
debug = true
puts "pref = #{pref}" if debug
=end

#ハッシュ
=begin
hash = {"sasamoto" => 181, "tokoro" => 185, "yamaguchi" => 172}

puts hash["sasamoto"]
year = hash["yamaguchi"]
=end
