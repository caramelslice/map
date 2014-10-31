//
//  ViewController.swift
//  map
//
//  Created by Julie Qiu on 26/10/14.
//  Copyright (c) 2014 Qiunique. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var labelSliderValue: UILabel!
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var inputX: UITextField!
    
    
    @IBOutlet weak var inputY: UITextField!
    
    @IBOutlet weak var slider: UISlider!
    
    
 

    @IBAction func sliderChange(sender: UISlider) {
    
        var currentValue = slider.value
        labelSliderValue.text = "\(currentValue)"
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //The latitude and longitude of the city of London is assigned to location constant using the CLLocationCoordinate2d struct
        
       // var x : Float = NSString(string: inputX).floatValue
        // var x = 51.50007773
        //var y =  -0.1246402
        
        
        var x = NSString(string: inputX.text).doubleValue
       
        
        var y = NSString(string: inputY.text).doubleValue
       
        
       // var x = 51.50007773
        //var y =  -0.1246402
       // var y = inputY.text
        
        let location = CLLocationCoordinate2D(latitude: x,
            longitude: y)
        
        //The span value is made relative small, so a big portion of London is visible. The MKCoordinateRegion method defines the visible region, it is set with the setRegion method.
        
        //let span = MKCoordinateRegion(0.05, 0.05)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //An annotation is created at the current coordinates with the MKPointAnnotaition class. The annotation is added to the Map View with the addAnnotation method.
    
        let anno = MKPointAnnotation()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

