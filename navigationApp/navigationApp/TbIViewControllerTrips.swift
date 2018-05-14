//
//  TbIViewControllerTrips.swift
//  navigationApp
//
//  Created by Michael Jeffrey on 14/5/18.
//  Copyright © 2018 Michael Jeffrey. All rights reserved.
//

import Foundation
import UIKit

class TblViewControllerTrips: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utilities.loadTrips()
        // push the table view below the bar
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, Bottom: 0, right: 0)
        
    }
    
    // how many sections in my table - i want one section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // how many rows trips in my array
    func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return Utilities.trips.count;
    }
    
    // fill the table view
    func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripCell", for: indexPath)
        cell.textLabel?.text = "\(Utilities.trips[indexPath.row].tripDestination), \(Utilities.trips[indexPath.row].tripDuration)"
        cell.detailTextLabel?.text = "\(Utilities.dateFormatter.string(from: Utilities.trips[indexPath.row].tripDate))"
        cell.imageView?.image = Utilities.trips[indexPath.row].destinationImage
    }
    
    
    
    
    
    
}

