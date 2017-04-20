class HelloCount
  @@count = 0   #クラス変数

  def self.count
    @@count
  end

  def initialize myname="Ruby"  # initializeの初期化
    @name = myname
  end

  def hello
    @@count += 1
    puts "Hello, world. I am #{@name}."
  end
end

bb = HelloCount.new "Bob"
aa = HelloCount.new "alice"
ruby = HelloCount.new

bb.hello
puts HelloCount.count
aa.hello
puts HelloCount.count
ruby.hello
ruby.hello
puts HelloCount.count
aa.hello
puts HelloCount.count
