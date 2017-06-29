# エラーコード分類

input_lines = gets.chomp!
ary = input_lines.split(//)   #文字列を一文字区切りで配列に渡す　split(//)
judge = ary[0].to_i
print judge == 2 ? "ok" : judge == 4 ? "error" : "unknown"


# 正規表現 TrueをFalseに、FalseをTrueに
input_lines = gets.chomp!

if input_lines =~ /False/
    puts input_lines.gsub(/False/, "True")
else input_lines =~ /True/
    puts input_lines.gsub(/True/, "False")
end
