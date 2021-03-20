
p "========================"
p "クラス定義"
p "========================"

class Greeting
    def hello(str = "Ruby")
        puts "Hello #{str}"
    end
end

g = Greeting.new  #オブジェクトを生成
g.hello("World!") #メソッドを実行(引数あり)
g.hello           #メソッドを実行(引数なし)

p "========================"
p "クラスの変数"
p "========================"
p "ローカル変数：何もないのは"
p "インスタンス変数：@から始まる"
p "クラス変数：@@から始まる"
p "グローバル変数：$から始まる"

class Greeting2
    def setName(name = "Ruby")
        @name = name   #インスタンス変数はインスタンス固有の変数
    end

    def hello
        print "Hello ", @name,"\n"  #変数@nameは他のメソッドからでも参照可能
    end
end

g1 = Greeting2.new
g1.setName("Taro")
g2 = Greeting2.new
g2.setName("Jiro")
g1.hello
g2.hello

#クラス変数を使用
class Greeting2
    def setName(name = "Ruby")
        @@name = name
    end

    def hello
        print "Hello ", @@name,"\n"
    end
end

#クラス変数なので同じ値が出る
g1 = Greeting2.new
g1.setName("Taro")
g2 = Greeting2.new
g2.setName("Jiro")
g1.hello
g2.hello



p "attr_reader	 参照のみ可能"
p "attr_writer	 変更のみ可能"
p "attr_accessor 参照・変更が可能"

class Greeting
    attr_accessor :name  #アクセスメソッドを定義
end

g = Greeting.new
g.name = "Taro"        #「オブジェクト名.変数名 =」で代入
puts g.name            #「オブジェクト名.変数名」で参照


p "========================"
p "クラスメソッド、インスタンスメソッド"
p "========================"

#クラスオブジェクトから実行可能なメソッド
p "def self.method_nameでクラスメソッドを定義"
class Greeting
    def self.say
        puts "hello!"
    end
end
#newしてないクラスオブジェクト
Greeting.say

p "class << self 内でクラスメソッドを定義"
class Greeting
    #これは慣れがいるな
    class << self
        def say
            puts "hello!"
        end
    end
end
Greeting.say

p "インスタンスオブジェクトから呼び出すインスタンスメソッド"
class Greeting
    def say
        puts "hello!"
    end
end
Greeting.new.say

#参照
#https://qiita.com/tbpgr/items/56eb65c0ea5882abbb07
