//
//  Trip.swift
//  headsup
//
//  Created by Yunqi Chen on 3/11/16.
//  Copyright © 2016 Angie Yunqi Chen. All rights reserved.
//

import Foundation

class Trip {
  var date : NSDate 
  var objects : ObjectGroup? 
  
  init(date: NSDate) {
    self.date = date 
  }
}