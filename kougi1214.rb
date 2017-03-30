#講義

class Bookinfo
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  attr_accessor :title, :author, :price   ##getter,setter

  def info(num)
    puts "#{@title}第#{num}版、著：#{@author}, #{@price}円"
  end
end

book = Bookinfo.new("たのしいRuby", "まつもとゆきひろ", 2400)
book.info(5)
book.price = 1000
book.info(4)
p book.price


num = 0
begin
  puts "#{10/num}"
rescue ZeroDivisionError
  puts "0で割ることはできません。"
  num += 1
  retry   #再度beginから実行
ensure
  puts "最終的に10÷#{num} = #{10/num}です。"
end
