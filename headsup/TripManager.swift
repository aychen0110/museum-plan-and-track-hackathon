//
//  TripManager.swift
//  headsup
//
//  Created by Yunqi Chen on 3/11/16.
//  Copyright © 2016 Angie Yunqi Chen. All rights reserved.
//

import Foundation

class TripManager {
  var listOfTrips = [Trip]();
  
  class var sharedTripManager: TripManager {
    struct Singleton {
      static let instance = TripManager()
    }
    return Singleton.instance
  }
  
  init() {
    
  }
  
  func addTrip(trip: Trip) {
    listOfTrips.append(trip);
  }
  
  func getTrip(byId id: Int)->Trip? {
    if (id < 0 || id > listOfTrips.count) {
      return nil;
    }
    return listOfTrips[id];
  }
}