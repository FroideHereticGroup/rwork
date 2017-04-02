class Numbers < Numeric
	def num(mynumber = 516)
		@num = mynumber
	end
end


p Numbers.ancestors
p Numbers.instance_methods