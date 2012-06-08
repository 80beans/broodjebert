class BertMapController < UIViewController

  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Map', image: UIImage.imageNamed("pin.png"), tag:1)
    end
    self
  end

  def loadView
    self.view = MKMapView.alloc.init
    view.delegate = self
    view.showsUserLocation = true
    startStandardUpdate
  end

  def viewWillAppear(animated)
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(52.37, 4.89), MKCoordinateSpanMake(0.1, 0.1))
    self.view.setRegion(region)

    self.view.addAnnotation(Bert.new(52.37214, 4.88600, 'Broodje Bert'))
  end

  def startStandardUpdate
    locationManager = CLLocationManager.alloc.init unless locationManager
    
    locationManager.delegate = self

    locationManager.startUpdatingLocation
    #locationManager.startMonitoringSignificantLocationChanges
  end

  def loadRoute

  end

end
