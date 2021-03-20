
p "========================"
p "メソッド"
p "========================"


#定義
def hello
    puts "Hello!!"
end

#メソッドを実行
hello 


def hello(name)
    puts "Hello " + name
end

hello("Tanaka") 


def hello(name = "Tanaka")
    puts "Hello " + name
end

hello

def add(x, y)
    return x + y
end

add(1, 2)

p "*は可変引数"
def func(num, *args)
    p num                #=> 123
    p args               #=> ["A", "B", "C"]
end

func(123, "A", "B", "C")


p "&はブロック引数"
p "ブロックはイテレータをも言う"
def hello(cnt, &block_arg)
    cnt.times do
        block_arg.call
    end
end

hello(3) { print "Hello " }


def receive_block(i, j, &block)
    puts "受け取ったブロックを実行します"
    block.call(i, j)
    puts "実行しました"
end

receive_block 2, 3 do |i, j|
    puts "#{i} + #{j} = #{i+j}"
end

p "特異メソッド"
str = String.new("ABC");

def str.print                     # strオブジェクトに特異メソッドを定義
  puts "[[[" + self + "]]]"
end

str.print

