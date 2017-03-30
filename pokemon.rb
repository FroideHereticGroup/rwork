#ポリモーフィズム使った場合

class Pokemon #ポケモンの能力値
  def initialize(type)
    @name = type
  end

  def hit_point #体力
    hp = 100
  end

  def attack #攻撃
    atk = 50
  end

  def block　#防御
    atk = 50
  end

  def concentration #特攻
    cn = 70
  end

  def defense　#特防
    df = 70
  end

  def speed #素早さ
    sp = 80
  end

  def kind(type)
    puts "#{@name}は#{type}タイプです。"
  end
end

class Lapid < Pokemon
  def speed #オーバーライド
    sp += 100
  end
end

pikachu = Lapid.new("ピカチュウ")
digda = Lapid.new(50)

puts pikachu.kind("電気")
puts digda.kind("地面")

=begin
porygon = Cont.new("エスパー")
sanders = Cont.new("電気")
=end
