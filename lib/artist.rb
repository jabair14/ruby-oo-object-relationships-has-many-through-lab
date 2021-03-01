class Artist 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all
        @@all 
    end

    def genres
        songs.map {|find_genre| find_genre.genre}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select { |all_songs| all_songs.artist == self }
    end

    # def new_song(name, genre)
end
