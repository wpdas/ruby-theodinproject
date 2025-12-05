module Music
  class Track
    # Attributes
    attr_accessor :title, :artist, :duration

    def initialize(title, artist, duration)
      @title = title
      @artist = artist
      @duration = duration
    end

    def play
      puts "Playing #{@title} by #{@artist} for #{@duration} seconds"
    end
  end
end