//
//  Place.swift
//  FirebaseTest
//
//  Created by Claude on 12/04/2017.
//  Copyright © 2017 Claude. All rights reserved.
//

import Foundation
import Firebase

struct Place {
    
    let key: String
    let name: String
    let longitude: String
    let latitude: String
    let ref: FIRDatabaseReference?
    
        
    init(name: String, longitude: String, latitude: String, key: String = "") {
        self.key = key
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
        self.ref = nil
    }
    
    init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        longitude = snapshotValue["longitude"] as! String
        latitude = snapshotValue["latitude"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
             "longitude": longitude,
              "latitude": latitude,
           
        ]
    }
    
}
