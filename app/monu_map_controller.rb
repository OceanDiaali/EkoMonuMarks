class MonuMapController < UIViewController
    
    def loadView
        self.view = MKMapView.alloc.init
        self.view.delegate = self
    end

    def viewDidLoad
        # centre map on lagos
        coordinate = CLLocationCoordinate2D.new(6.5244, 3.3792)
        region = MKCoordinateRegionMake(coordinate, MKCoordinateSpanMake(0.1, 0.1))
        self.view.setRegion(region)

        MonuMark.all.each do |monumark|
          self.view.addAnnotation(monumark)
        end
    end

    def viewWillAppear(animated)
        navigationController.setNavigationBarHidden(true, animated:true)
      end 

    ViewIdentifier = 'ViewIdentifier'
    def mapView(mapView, viewForAnnotation:monumark)
        view = MKPinAnnotationView.alloc.initWithAnnotation(monumark, reuseIdentifier:ViewIdentifier)
        button = UIButton.buttonWithType(UIButtonTypeDetailDisclosure)
        view.canShowCallout = true
        view.animatesDrop = true
        button.addTarget(self, action: :'showDetails:', forControlEvents:UIControlEventTouchUpInside)
        view.leftCalloutAccessoryView = button
        
        view
    end

    def showDetails(sender)
        monumark = view.selectedAnnotations[0]
        
        navigationController.pushViewController(monuDetailController, animated:true)
        monuDetailController.showDetailsForMonuMark(monumark)
    end

    private

    def monuDetailController
        @monuDetailController ||= MonuDetailController.alloc.init
    end
end # end of class