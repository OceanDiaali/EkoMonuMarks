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
            MonuMark.new('Lekki Conservation Centre', 6.4416, 3.5358, "https://en.wikipedia.org/wiki/Lekki_Conservation_Centre"),
            MonuMark.new('Tinubu Square', 6.4537, 3.3900, "https://en.wikipedia.org/wiki/Tinubu_Square"),
            MonuMark.new('National Stadium', 6.4972, 3.3647, "https://en.wikipedia.org/wiki/National_Stadium,_Lagos"),
            MonuMark.new('Lagos Lagoon', 6.4311, 3.4019, "https://en.wikipedia.org/wiki/Lagos_Lagoon"),
            MonuMark.new('Taiwo Olowo Monument', 6.4526, 3.3903, "https://en.wikipedia.org/wiki/Taiwo_Olowo"),
            MonuMark.new('Muritala Mohammed Airport', 6.5818, 3.3211, "https://en.wikipedia.org/wiki/Murtala_Muhammed_International_Airport"),
            MonuMark.new('Eko Atlantic', 6.4098, 3.4120, "https://en.wikipedia.org/wiki/Eko_Atlantic"),
            MonuMark.new('Lekki Free Trade Zone', 6.4362, 3.9588, "http://lfzdc.org/"),
            MonuMark.new('National Museum', 6.4452, 3.4032, "https://en.wikipedia.org/wiki/Nigerian_National_Museum"),
            MonuMark.new('Welcome to Lagos statue', 6.5946, 3.9776, "https://en.wikipedia.org/wiki/Welcome_to_Lagos")
            ]
        end
    end


end