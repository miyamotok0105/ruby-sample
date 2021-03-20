
p "========================"
p "オブジェクト"
p "========================"


class MyClass
    @name = ""
    def setName(str)
        @name = str
    end
    def getName
        return @name
    end
end

p "オブジェクト生成"
obj = MyClass.new
obj.setName("Tanaka")
puts obj.getName

p "========================"
p "オブジェクトの継承"
p "========================"

p "<で継承"

class MyMember
    @name = ""
    def setName(str)
        @name = str
    end
    def getName
        return @name
    end
end

class MyMember2 < MyMember
    @addr = ""
    def setAddr(str)
        @addr = str
    end
    def getAddr
        return @addr
    end
end

obj = MyMember2.new
obj.setName("Tanaka")
obj.setAddr("Tokyo")
puts obj.getName
puts obj.getAddr

p "========================"
p "クラスのネスト"
p "========================"

#いくつかのクラスをグルーピングできる
class Foo
    class Bar
    end
end
  
obj = Foo::Bar.new
puts obj


