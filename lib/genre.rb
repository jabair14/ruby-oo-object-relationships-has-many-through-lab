class Genre 
    attr_accessor :name 

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs 
        Song.all {|find_genre| find_genre.genre == self}
    end

    def artists
        songs.map {|find_artist| find_artist.artist}
    end

    def add_song(song)
        songs << song 
    end

    def self.all
        @@all
    end 





end
