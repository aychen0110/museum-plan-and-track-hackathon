//
//  ObjectGroup.swift
//  headsup
//
//  Created by Yunqi Chen on 3/12/16.
//  Copyright © 2016 Angie Yunqi Chen. All rights reserved.
//

import Foundation

class ObjectGroup {
  var name: String 
  var description: String? 
  
  var objects = [DisplayObject]()
  
  init(name: String) {
    self.name = name
  }
  
  func addObject(newObj:DisplayObject) {
    self.objects.append(newObj)
  }
  
  func addObjects(newObjects:[DisplayObject]) {
    self.objects.appendContentsOf(newObjects)
  }
  
  func size() -> Int {
    return objects.count
  }
  
  func getObject(atIdx idx: Int) -> DisplayObject {
    // assuming proper idx
    return objects[idx]
  }
  // TODO: allow obj. removal.
}