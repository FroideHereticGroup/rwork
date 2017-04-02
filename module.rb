#module

module HelloModule
	Version = "1.0"

	def hello name
		puts "hello #{name}!!!"
	end

	def foo
		puts self
	end

	module_function :hello, :foo
end

p HelloModule::Version
HelloModule.hello "takumi"
HelloModule.foo

include HelloModule
p Version
hello "motty"