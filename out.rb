# IOクラス
3.times do |item|
  $stdout.puts "#{Random.rand}"
  $stderr.puts "#{item+1}回出力されました。"  # 出力すると $stderrのみ表示される
end

text = File.open("log.txt")
text.close
p text.closed?

# text2 = File.read("log.txt")


# getsメソッドのイディオム
=begin
while line = io.gets
  line.chomp!
  .
  .
  .
end
p io.eof?  # getメソッドが最後まで入力を読み込んでいればtrueが返える

# 上と同じ
io.each_line do |line|
  line.chomp!
  .
  .
  .
end

# readlinesを使った書き方
ary = io.readlines
ary.readlines do |line|
  line.chomp!
  .
  .
  .
end
# 各要素を配列とする配列を取得する

=end
