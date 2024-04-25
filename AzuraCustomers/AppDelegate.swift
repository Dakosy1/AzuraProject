//
//  AppDelegate.swift
//  AzuraCustomers
//
//  Created by Alisher Tulembekov on 24.04.2024.
//
import GooglePlaces
import GoogleMaps
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyDsKlKLiPzydtlWZN6dzsgRpAye2_SnHSw")
        GMSPlacesClient.provideAPIKey("AIzaSyDsKlKLiPzydtlWZN6dzsgRpAye2_SnHSw")
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        return true
    }
 }
