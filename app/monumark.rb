class MonuMark
    
    def initialize(name, latitude, longitude, url, video_url)
      @name = name
      @coords = CLLocationCoordinate2D.new
      @coords.latitude = latitude
      @coords.longitude = longitude
      @url = NSURL.alloc.initWithString(url)
      @video_url = NSURL.alloc.initWithString(video_url)
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

    def video_url
        @video_url
    end

    # MonuMark.all
    class << self
        def all
            [
            MonuMark.new('Tafawa Balewa Square', 6.4493, 3.4048, "https://en.wikipedia.org/wiki/Tafawa_Balewa_Square","https://youtu.be/knc9lV-9rB4"),
            MonuMark.new('National Arts Theatre', 6.4762, 3.3694, "https://en.wikipedia.org/wiki/National_Arts_Theatre","https://youtu.be/a2u9-hWo-NM"),
            MonuMark.new('Third Mainland Bridge', 6.5025, 3.4025, "https://en.wikipedia.org/wiki/Third_Mainland_Bridge","https://youtu.be/FWk_GzxXkJk"),
            MonuMark.new('Freedom Park', 6.4489, 3.3965, "https://en.wikipedia.org/wiki/Freedom_Park_(Lagos)","https://youtu.be/Uz0231lHk9E"),
            MonuMark.new('Lekki Conservation Centre', 6.4416, 3.5358, "https://en.wikipedia.org/wiki/Lekki_Conservation_Centre","https://youtu.be/yJTZZg2dO6Q"),
            MonuMark.new('Tinubu Square', 6.4537, 3.3900, "https://en.wikipedia.org/wiki/Tinubu_Square","https://youtu.be/9o1tUxIHuGU"),
            MonuMark.new('National Stadium', 6.4972, 3.3647, "https://en.wikipedia.org/wiki/National_Stadium,_Lagos","https://youtu.be/dWS84d2eNgg"),
            MonuMark.new('Lagos Lagoon', 6.4311, 3.4019, "https://en.wikipedia.org/wiki/Lagos_Lagoon","https://youtu.be/tDe9XKfgIDk"),
            MonuMark.new('Eleko Beach', 6.4963, 3.5965, "https://en.wikipedia.org/wiki/Eleko_Beach","https://youtu.be/krEmeZKvHUU"),
            MonuMark.new('Muritala Mohammed Airport', 6.5818, 3.3211, "https://en.wikipedia.org/wiki/Murtala_Muhammed_International_Airport","https://youtu.be/lcp65Syw30Y"),
            MonuMark.new('Eko Atlantic', 6.4098, 3.4120, "https://en.wikipedia.org/wiki/Eko_Atlantic","https://youtu.be/R-aqzDfdpno"),
            MonuMark.new('Lekki Free Trade Zone', 6.4362, 3.9588, "https://en.wikipedia.org/wiki/Lekki#Lekki_Free_Trade_Zone","https://youtu.be/ZkBp5lVV45c"),
            MonuMark.new('National Museum', 6.4452, 3.4032, "https://en.wikipedia.org/wiki/Nigerian_National_Museum","https://youtu.be/zNHh-gvnW5s"),
            MonuMark.new('Welcome to Lagos statue', 6.5946, 3.9776, "https://en.wikipedia.org/wiki/Welcome_to_Lagos","https://youtu.be/iNdV20-5MqY"),
            MonuMark.new('Oba of Lagos Palace', 6.4599, 3.3895, "https://en.wikipedia.org/wiki/Iga_Idunganran","https://youtu.be/59TjpxLXY0A"),
            MonuMark.new('Tarkwa Bay', 6.2406, 3.2347, "https://en.wikipedia.org/wiki/Tarkwa_Bay_Beach","https://youtu.be/_LsfZG5IykM"),
            MonuMark.new('Water House', 6.4523, 3.3892, "https://en.wikipedia.org/wiki/Water_House","https://youtu.be/3DsavWsiTcA"),
            MonuMark.new('Christ church cathedral', 6.4508, 3.3902, "https://en.wikipedia.org/wiki/Cathedral_Church_of_Christ,_Lagos","https://youtu.be/FcVMEW6C2Qs")
            ]
        end
    end


end