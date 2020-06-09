class Post
@@all = []
attr_accessor :title, :author

def initialize(name)
    @title = name
    @@all << self
end

def author=(name)
    @author = name
    name.posts << self
end

def author_name
    author ? author.name : nil
end

def self.all
    @@all
end


end