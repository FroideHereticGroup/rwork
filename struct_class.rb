#Structクラスに関して~読み込みクラス~

Point = Struct.new("Point", :x, :y)
item = Point.new(100, 200)
p item
p item.x
p item.y

#無名クラスを作成
Point2 = Struct.new(:z)
Point2.class
item2 = Point2.new(300)
p item2
p item2.z 
