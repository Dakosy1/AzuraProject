import UIKit
import SnapKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           // Create a GMSCameraPosition that tells the map to display the
           // coordinate -33.86,151.20 at zoom level 6.

           let options = GMSMapViewOptions()
           options.camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
           options.frame = self.view.bounds

           let mapView = GMSMapView(options: options)
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()

           self.view.addSubview(mapView)

           // Creates a marker in the center of the map.
           let marker = GMSMarker()
           marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
           marker.title = "Sydney"
           marker.snippet = "Australia"
           marker.map = mapView
     }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            if let location = locations.first {
                print("Location: \(location)")
            }
        }

    

}

//extension ViewController: CLLocationManagerDelegate {
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
//        print ("location = \(locValue.latitude) \(locValue.longitude)")
////        lblLocation.text = "latitude = \(locValue.latitude), longitude = \(locValue.longitude) "
//    }
//}


