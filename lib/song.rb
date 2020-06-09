class Song

attr_accessor :name, :artist

@@all = []

def self.all
    @@all
end

def initialize(title)
    @name = title
    @@all << self
end

def artist_name
    artist ? artist.name : nil
end

end