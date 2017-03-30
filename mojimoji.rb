#文字列を表示するプログラム(多次元配列)

tbl = [
  [1,0,0,0,0,0,1],
  [0,1,0,0,0,1,0],
  [0,0,1,0,1,0,0],
  [0,0,0,1,0,0,0],
  [0,0,1,0,1,0,0],
  [0,1,0,0,0,1,0],
  [1,0,0,0,0,0,1]
]

x = tbl.size
x.times do |i|
  y = tbl.size
  y.times do |j|
    if tbl[i][j] == 1
      print "■"
    else
      print "□"
    end
  end
  print "\n"
end
