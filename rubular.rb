

text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT

p text.scan /\d{2}-\d{4}-\d{4}/


text2 = <<-TEXT
名前：伊藤淳一
電話：03(1234)5678
電話：090-1234-5678
電話：0795(12)3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT

p text2.scan /\d{2,5}[-(]\d{1,4}[-)]\d{4}/


text3 = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

p text3.scan /クープ.?バ[ゲケ]ット/
# splitで改行ごとに配列変換、grepで配列の正規表現マッチ
p text3.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

text4 = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = text4.gsub /<option value="(\w+)"(?: selected)?>(.*?)<\/option>/, '\1,\2'

puts replaced

print "\n"

text5 = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT

puts text5.gsub /^[ \t]+$/, ''


text6 = <<-TEXT
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:46 heroku/api:  Starting process ...
Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
Feb 14 07:36:50 heroku/scheduler.7625:  State ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
TEXT

puts text6.gsub /^.+heroku\/(api|scheduler).+\n/, ''
