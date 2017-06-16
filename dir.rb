# Dirクラスについて

["tmp", "tmp/lang",  "tmp/lang/ruby", "tmp/lang/python", "tmp/lang/python/pycharm"].each do |dir|
  Dir.mkdir(dir)
end

Dir.chdir("tmp/lang") # ディレクトリ移動
Dir.new(".").each do |entry|    # . は現在の作業ディレクトリを指す
  # Dir.new(".")は 「., .., python, ruby」を指すFile.openを同じでカレントディレクトリを開く
  filename = File.join(entry, "rocking.rb")
  puts filename
  Dir.pwd
  File.open(filename, "w")
end
Dir.rmdir("python")


dir = Dir.open("/usr/bin")
while name = dir.read
  p name
end
=begin
dir.each do |name|
  p name
end
=end
dir.close
