class Song

    @@count=0
    @@genres=[]
    @@artists=[]
    @@genre_count={}
    @@artist_count={}
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@artists.push(@artist)
        @@genres.push(@genre)
        

    end

    def self.count
        @@count
       
    end

    def self.genres
     @@genres.uniq!
       
    end

    def self.artists
        @@artists.uniq!
    end
    def self.genre_count
        @@genres.tally 
    end
    def self.artist_count
        @@artists.tally
    end

end


him=Song.new("pac", "hi", "lo")
she=Song.new("kj",'hh',"love")
puts Song.genre_count