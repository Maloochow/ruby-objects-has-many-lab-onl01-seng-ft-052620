class Author
attr_accessor :name, :posts

def initialize(name)
    @name = name
    @posts = []
end

def add_post(post)
    post.author = self
end

def add_post_by_title(string)
    post = Post.new(string)
    add_post(post)
end

def self.post_count
    Post.all.select {|post| post.author}.count
end

end