
#コメント

=begin
複数行コメント
複数行コメント
=end


p "========================"
p "print"
p "========================"

print  "hello world!\n" #改行コードを入れれば改行される

puts "hello world" #改行がある

p "hello world(p)" #データの形式がわかるように表示する。


#変数 定数================
p "========================"
p "変数 定数"
p "========================"

msg = "変数"
p msg

#アルファベット大文字 ([A-Z]) で始まる識別子は定数になる
ADMIN_EMAIL = "endo@yahoo.co.jp" 
p ADMIN_EMAIL


p "========================"
p "型"
p "========================"

v_int_num = 1234 #int
v_float_num = 1.234 #float
v_bool = true
v_str = "Hello world"
v_str = 'Hello world'

require 'bigdecimal'
v_decimal = (BigDecimal("1800") * BigDecimal("1.08")).ceil

p "int:"+v_int_num.to_s
p "float:"+v_float_num.to_s
p "bool:"+v_bool.to_s
p "string:"+v_str.to_s
p "decimal:"+v_decimal.to_s

p "========================"
p "文字列から数値へ変換：to_i"
p "文字列から数値floatへ変換：to_f"
p "数値から文字列へ変換：to_s"
p "+で連結"
p "========================"


p "{式} の形式で 式展開ができる"
p "========================"
name = "Tanaka"
puts "My name is #{name}"

p "========================"
p "コマンド出力(`...`)"
p "========================"
# コマンドを実行して使用できる
puts `date`

p "========================"
p "ヒアドキュメント(<<)"
p "========================"
# 複数行の文字列を扱う
doc =<<END_OF_STRING
This is Japan.
This is America.
END_OF_STRING

puts doc


p "========================"
p "型チェック"
p "========================"


#型チェック

# ADMIN_EMAILのクラス名
p ADMIN_EMAIL.class
# ADMIN_EMAILはどのメソッドを持ってるのか。1〜3番目までを表示
p ADMIN_EMAIL.methods[0..2]

#kind_ofで特的のオブジェクトかチェック
#サブクラスも含めてチェック
if ADMIN_EMAIL.kind_of?(String)
    p "ADMIN_EMAILはstringです"
end
#is_aもkind_ofと同じ
if ADMIN_EMAIL.is_a?(String)
    p "ADMIN_EMAILはstringです"
end
#kind_of, is_aと同じだが、違いはサブクラスを含めない
if ADMIN_EMAIL.instance_of?(String)
    p "ADMIN_EMAILはstringです"
end

p "========================"
p "! 破壊的メソッド"
p "? 真偽値を返すメソッド"
p "========================"

puts name.upcase!
#!破壊的メソッドで元の値自体が変わる
puts name
p name.empty?


p "========================"
p "配列"
p "========================"

colors = ["red","blue","Yellow"]
p colors
p colors[0]
p colors[-1] #末尾

sales = [0,1,2,3,4,5]
p sales[0..2] # 0 1 2 (0~2以上)
p sales[0...2] #0 1のみ (0~2未満)

p sales[1..3]
p sales[1]
p sales[2]

p "置き換える"
sales = [5,8,4]
p sales

p "要素を追加する"
sales[1,0] = [10,11,12]
p sales

p "要素を削除する"
sales[0,2] = [ ]
p sales

p "要素数、ソート、ソートリバース"
p sales.size
p sales.sort
p sales.sort.reverse

p "要素を末尾に追加"
sales.push(1)
sales.push(2)
p sales

p "========================"
p "ハッシュ"
p "========================"
p "ハッシュはキーが文字列"
sales = {"endo"=>200,"takahasihi"=>400}
p sales
p "シンボル名で書くと高速で動く"
sales = {:taguchi =>200,:watanabe => 150}
p sales
p "シンボル名の省略形"
sales = {taguchi: 200,watanabe: 150}
p sales
p "taguchi"
p sales[:taguchi]

sales[:taguchi] = 600

p "要素数、キー、値"
p sales.size
p sales.keys
p sales.values #中に値があるか確認する。
p sales.has_key?(:taguchi)
p sales.has_key?(:aaa)


p "========================"
p "配列へ変換：to_a"
p "ハッシュへ変換：to_h"
p "========================"

p sales.to_a
p sales.to_a.to_h

p "========================"
p "％記法"
p "========================"

p "%Q()はダブルクォートで囲んだのと同じ意味"
p "%q()はシングルクォートで囲んだのと同じ意味"

name="endo"
puts "hello #{name}!"+" ."
puts %Q(hello #{name}!)+%Q( .)

p "%w()は配列で式展開されない"
p "%W()は配列で式展開される"

a = ["a","b","c"]
p a
a = %w(a b c)
p a

apple='red'
banana='yellow'
a = %W(#{apple} #{banana} PHP)
p a

p "name: %s" % "taguchi"
