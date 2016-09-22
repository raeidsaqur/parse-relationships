//
//  Song.swift
//  ParseRelationships
//
//  Created by Jeremy Petter on 2016-06-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import Parse

class Song: PFObject {

    @NSManaged var name: String
    @NSManaged var artist: Artist

    var artists: PFRelation {
        return relationForKey(Artist.parseClassName())
    }

    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

extension Song: PFSubclassing {
    static func parseClassName() -> String {
        return "Song"
    }
}
