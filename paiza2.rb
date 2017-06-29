num = 0
1.upto(7) do
    input_lines = gets.chomp.to_i
    break if input_lines < 0 || input_lines > 100
    num += input_lines
    print "\s"
end

ave = num / 7
puts ave.round(1)
