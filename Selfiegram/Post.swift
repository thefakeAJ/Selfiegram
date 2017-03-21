//
//  Post.swift
//  Selfiegram
//
//  Created by Andrew Chang on 2017-03-06.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Post: PFObject, PFSubclassing {
    
    static func parseClassName() -> String {
        // sets what the table name on Parse will be called
        return "Post"
    }
    
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    
    // convenience init method, because it’s building on top of PFObject’s init, rather than overriding it.
    convenience init(image:PFFile, user:PFUser, comment:String){
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
    }
    
}
