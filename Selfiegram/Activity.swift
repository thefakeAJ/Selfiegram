//
//  Activity.swift
//  Selfiegram
//
//  Created by Andrew Chang on 2017-03-06.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Activity: PFObject, PFSubclassing {
    
    @NSManaged var type:String
    @NSManaged var post:Post
    @NSManaged var user:PFUser
    
    static func parseClassName() -> String {
        return "Activity"
    }
    
    convenience init(type:String, post:Post, user:PFUser){
        self.init()
        self.type = type
        self.post = post
        self.user = user
    }

    
}
