//
//  ServiceSchedule.swift
//  MojioSDK
//
//  Created by Ashish Agarwal on 2016-02-26.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class ServiceSchedule: Object, Mappable {
    
    public dynamic var VIN : String? = nil
    public var Items = List<ServiceScheduleItem>()
    
    public required convenience init?(_ map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        
        var items = Array<ServiceScheduleItem>()
        items <- map["Items"]
        
        for item in items {
            Items.append(item)
        }
        
        VIN <- map["VIN"]
    }
}
