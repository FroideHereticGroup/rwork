=begin
public:インスタンスメソッドとして使えるようにする
private:レシーバを指定して呼び出せないようにする
protected:同一のクラスであればインスタンスメソッドとして使えるようにする

=end

class Hello
	Version = 1
	def initialize(myname = "ruby")
		@name = myname
	end

	def hello
		puts "Hello, world. I am #{@name}."
	end

	def self.hello(name)
		puts "#{name} said hello."
	end

end

alice = Hello.new("alice")
alice.hello

Hello::hello("takumi")
puts Hello::Version