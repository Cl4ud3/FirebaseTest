//
//  ViewController.swift
//  FirebaseTest
//
//  Created by Claude on 12/04/2017.
//  Copyright © 2017 Claude. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let ref = FIRDatabase.database().reference(withPath: "places")
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldLong: UITextField!
    
    @IBOutlet weak var testFieldLat: UITextField!
    
    @IBAction func clikOnSaveData(_ sender: Any) {
        
        let name = textFieldName.text
        let long = textFieldLong.text
        let lat = testFieldLat.text
        
        let place = Place(name: name!, longitude: long!, latitude: lat!)
        
        let placeRef = self.ref.child(name!.lowercased())
        
        placeRef.setValue(place.toAnyObject())
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

