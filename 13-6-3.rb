a = ["taku", "asd", 1, 2]
p Array.ancestors
p a.map{|item| item.to_i}
p a.instance_of?(Array)
p a.instance_of?(String)
p a.instance_of?(Hash)
p a.instance_of?(Numeric)
p a.class
p BasicObject.methods