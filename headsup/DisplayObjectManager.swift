
//
//  DisplayObjectManager.swift
//  headsup
//
//  Created by Yunqi Chen on 3/11/16.
//  Copyright © 2016 Angie Yunqi Chen. All rights reserved.
//

import Foundation

class DisplayObjectManager {
  var mustSee : ObjectGroup? 
  var impressionist : ObjectGroup? 
  
  class var sharedDisplayObjectManager: DisplayObjectManager {
    struct Singleton {
      static let instance = DisplayObjectManager()
    }
    return Singleton.instance
  }
  
  init() {
    
  }
  
  func getMustSeeList() -> ObjectGroup {
    if let g = self.mustSee {
      return g 
    }
    
    mustSee = ObjectGroup(name: "Must See") 
    let vanGogh = DisplayObject(objectId: 52064) 
    vanGogh.titleOfWork1 = "Portrait of Madame Augustine Roulin and Baby Marcelle" 
    vanGogh.date = "1888 or 1889" 
    vanGogh.dimensions = "36 3/8 x 28 15/16 inches (92.4 x 73.5 cm)\n \n Framed: 49 1/2 x 42 x 5 1/2 inches (125.7 x 106.7 x 14 cm)" 
    vanGogh.pmaUrl = "http://www.philamuseum.org/collections/permanent/52064.html"
    vanGogh.imageFilename = "1950-92-22-CX.jpg"
    mustSee?.addObject(vanGogh) 
    
    let foo = DisplayObject(objectId: 19010) 
    foo.titleOfWork1 = "Random art"
    foo.date = "2100"
    foo.dimensions = "36 3/8 x 28 15/16 inches (92.4 x 73.5 cm)\n \n Framed: 49 1/2 x 42 x 5 1/2 inches (125.7 x 106.7 x 14 cm)"
    foo.pmaUrl = "http://www.google.com"
    foo.imageFilename = "1950-92-22-CX.jpg"
    mustSee?.addObject(foo)
    
    return mustSee! 
  }
  
  // TODO: impression list
}