#structクラスにincludeするモジュールの作成
module Test
  class Module_test
    def self.load
      true
    end
  end
end

class Struct
  include Test
end


#Structクラスに関して~読み込みクラス~
Point = Struct.new("Point", :x, :y)
item_test = Point::Module_test.load
item = Point.new(100, 200)
p item
p item.x
p item.y
p item_test

#無名クラスを作成
Point2 = Struct.new(:z)
Point2.class
item2 = Point2.new(300)
p item2
p item2.z
