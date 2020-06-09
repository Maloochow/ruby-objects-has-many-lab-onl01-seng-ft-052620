class Artist

attr_accessor :name
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        Song.all.select {|song| song.artist}.count
        # The code below also works but it does not hold the possibility of future development that a single song associates with multiple artists. It also requires an additional class variable of @@all for Artist class. On the other hand, this variable might be helpful so it doens't hurt
        # count = 0
        # @@all.each {|name| count += name.songs.count}
        # count

    end

end