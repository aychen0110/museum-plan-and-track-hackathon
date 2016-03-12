//
//  DisplayObject.swift
//  headsup
//
//  Created by Yunqi Chen on 3/11/16.
//  Copyright © 2016 Angie Yunqi Chen. All rights reserved.
//

import Foundation

class DisplayObject {
  var objectId : Int 
  
  var objectNumber : String? 
  var imageFilename: String? 
  var artistName1 : String? 
  var titleOfWork1 : String? 
  var date : String? 
  var dateSearchBegin : Int?
  var dateSearchEnd :Int? 
  var medium : String? 
  var materials : String? 
  var dimensions : String? 
  var galleryLocation: String? 
  var geography : String? 
  var latitude : Float? 
  var longitude : Float? 
  var creditLine : String? 
  var pmaUrl : String? 
  
  init(objectId id: Int) {
    self.objectId = id 
  }
}