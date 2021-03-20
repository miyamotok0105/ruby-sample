p "よくない例：委譲の隠蔽"

class Article
    #書込可能
    attr_accessor :blog
end

class Blog
    #読取専用
    attr_reader :writer

    def initialize(writer)
        @writer = writer
    end
end

article1 = Article.new

blog1 = Blog.new('ブロガーくん')
article1.blog = blog1

p "articleはblogを介してwriteしてる"
#ブログクラスへの依存があり、ブログクラスの変更があったらツライ
puts article1.blog.writer # -> ブロガーくん


p "リファクタした例：委譲の隠蔽"

class Article
    attr_accessor :blog
    #追加
    def writer
        blog.writer
    end  
end

class Blog
    attr_reader :writer

    def initialize(writer)
        @writer = writer
    end
end


article1 = Article.new
blog1 = Blog.new('ブロガーくん')
article1.blog = blog1

p "articleはwriteすれば良くなった"
puts article1.writer # -> ブロガーくん

