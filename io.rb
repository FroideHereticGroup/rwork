require 'stringio'

# IOクラス

# flushメソッド
filename = "ioexample.txt"
File.open(filename, "w") do |file|
  3.times do |i|
    file.write("a" * 5)
    file.flush  # 出力バッファを即座に出力
    puts "#{i+1}回目：#{File.size(filename)}"
  end
end
puts "終了後：#{File.size(filename)}"
p File.read(filename)


# syncメソッド 結果は↑と同じ
filename = "ioexmaple.txt"
File.open(filename, "w") do |file|
  file.sync = true  # 出力操作と同時に実際に出力されるようになる
  3.times do |i|
    file.write("a" * 5)
    puts "#{i+1}回目：#{File.size(filename)}"
  end
end
puts "終了後：#{File.size(filename)}"
p File.read(filename)


io = StringIO.new
io.puts "A"
io.puts "B"
io.puts "C"
io.rewind
p io.read
