
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


