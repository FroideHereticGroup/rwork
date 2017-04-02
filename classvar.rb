class HelloCount
	@@count = 0

	def self.count
		@@count
	end

	def initialize(myname = "Ruby")
		@name = myname
	end

	def hello
		@@count += 1
		puts "Hello, world. I am #{@name}."
	end
end

bob = HelloCount.new("bob")
bob.hello
alice = HelloCount.new("alice")
alice.hello
puts HelloCount.count