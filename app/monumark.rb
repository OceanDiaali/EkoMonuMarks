class MonuMark
    
    def initialize(name, latitude, longitude, url)
      @name = name
      @coords = CLLocationCoordinate2D.new
      @coords.latitude = latitude
      @coords.longitude = longitude
      @url = NSURL.alloc.initWithString(url)
    end

    def title
        @name
    end

    def coordinate
        @coords
    end

    def url
        @url
    end

    # MonuMark.all
    class << self
        def all
            [
            MonuMark.new('Tafawa Balewa Square', 6.4493, 3.4048, "https://en.wikipedia.org/wiki/Tafawa_Balewa_Square"),
            MonuMark.new('National Arts Theatre', 6.4762, 3.3694, "https://en.wikipedia.org/wiki/National_Arts_Theatre"),
            MonuMark.new('Third Mainland Bridge', 6.5025, 3.4025, "https://en.wikipedia.org/wiki/Third_Mainland_Bridge"),
            MonuMark.new('Freedom Park', 6.4489, 3.3965, "https://en.wikipedia.org/wiki/Freedom_Park_(Lagos)"),
            MonuMark.new('Lekki Conservation Centre', 6.4416, 3.5358, "https://en.wikipedia.org/wiki/Lekki_Conservation_Centre")
            ]
        end
    end


end