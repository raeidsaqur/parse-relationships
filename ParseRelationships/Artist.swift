//
//  Artist.swift
//  ParseRelationships
//
//  Created by Jeremy Petter on 2016-06-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import Parse

class Artist: PFObject {
    
    @NSManaged var name:String

    var songs: PFRelation {
        return relationForKey(Song.parseClassName())
    }

    convenience init(name:String) {
        self.init()
        self.name = name
    }
}

extension Artist: PFSubclassing {
    static func parseClassName() -> String {
        return "Artist"
    }
}