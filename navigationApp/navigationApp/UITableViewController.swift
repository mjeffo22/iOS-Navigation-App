//
//  UITableViewController.swift
//  navigationApp
//
//  Created by Michael Jeffrey on 14/5/18.
//  Copyright © 2018 Michael Jeffrey. All rights reserved.
//

import Foundation
import UIKit

class Trip {
    var tripDate : Date
    var tripDuration : Int
    var tripDestination : String
    var destinationImage : UIImage
    
    init(date : Date, duration : Int, destination: String, img : UIImage) {
    
    self.tripDate = date
    self.tripDuration = duration
    self.tripDestination = destination
    self.destinationImage = img
    }
}

class Utilities {
    static var dateFormatter = DateFormatter()
    static var trips : [Trip] = []
    static func loadTrips() {
        dateFormatter.dateFormat = "yy/mm/dd"
        trips = [
        
            Trip(date : dateFormatter.date(from: "17/04/24")!, duration : 2, destination : "Meblbourne" , img : UIImage(named: "Melbourne")!),
            Trip(date : dateFormatter.date(from: "17/05/24")!, duration : 2, destination : "Sydney", img: UIImage(named : "Sydney")!)
        ]
        
    }
}

class UITableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
