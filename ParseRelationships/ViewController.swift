//
//  ViewController.swift
//  ParseRelationships
//
//  Created by Jeremy Petter on 2016-06-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//         createArtists()
//         createSongs()

//        let kendrick = getKendrick()
//        let i = getI()
//        let swimmingPools = getSwimmingPools()
//
//        let taylor = getTaylor()
//        let weAreNeverEverGettingBackTogether = getNever()
//        let shakeItOff = getShakeItOff()
//
        let badBlood = getBadBlood()

        print("\n\n\n")

//        i.artist = kendrick
//        swimmingPools.artist = kendrick
//        i.saveInBackground()
//        swimmingPools.saveInBackground()
//
//        weAreNeverEverGettingBackTogether.artist = taylor
//        shakeItOff.artist = taylor
//        weAreNeverEverGettingBackTogether.saveInBackground()
//        shakeItOff.saveInBackground()

//        let query = PFQuery(className: Song.parseClassName())
//        query.whereKey("artist", equalTo: kendrick)
//
//        query.findObjectsInBackgroundWithBlock { (results, error) in
//            print("songs by " + kendrick.name + ":")
//
//            if let songs = results as? [Song] {
//
//                for song in songs {
//                    print(song.name)
//                }
//            }
//        }


//        i.artist.fetchIfNeededInBackgroundWithBlock { (result, error) in
//
//            print("artist for " + i.name + ":")
//
//            if let artist = result as? Artist {
//
//                print(artist.name)
//            }
//        }

//        kendrick.songs.addObject(i)
//        kendrick.songs.addObject(swimmingPools)
//        kendrick.songs.addObject(badBlood)
//
//        kendrick.saveInBackground()
//
//        taylor.songs.addObject(shakeItOff)
//        taylor.songs.addObject(weAreNeverEverGettingBackTogether)
//        taylor.songs.addObject(badBlood)
//        taylor.saveInBackground()
//
//        i.artists.addObject(kendrick)
//        i.saveInBackground()
//
//        swimmingPools.artists.addObject(kendrick)
//        swimmingPools.saveInBackground()
//
//        shakeItOff.artists.addObject(taylor)
//        shakeItOff.saveInBackground()
//
//        weAreNeverEverGettingBackTogether.artists.addObject(taylor)
//        weAreNeverEverGettingBackTogether.saveInBackground()
//
//        badBlood.artists.addObject(taylor)
//        badBlood.artists.addObject(kendrick)
//        badBlood.saveInBackground()

//        let query = badBlood.artists.query()
//
//        query.findObjectsInBackgroundWithBlock { (results, error) in
//
//            print("artists for " + badBlood.name + ":")
//
//            if let artists = results as? [Artist] {
//                for artist in artists {
//                    print(artist.name)
//                }
//            }
//        }

    }

    // MARK: Helpers

    func getKendrick() -> Artist {
        let query = PFQuery(className: Artist.parseClassName())
        query.whereKey("name", equalTo: "Kendrick Lamar")
        return try! query.getFirstObject() as! Artist // This is unsafe - do not do it
    }

    func getTaylor() -> Artist {
        let query = PFQuery(className: Artist.parseClassName())
        query.whereKey("name", equalTo: "Taylor Swift")
        return try! query.getFirstObject() as! Artist
    }

    func getI() -> Song {
        let query = PFQuery(className: Song.parseClassName())
        query.whereKey("name", equalTo: "i")
        return try! query.getFirstObject() as! Song
    }

    func getSwimmingPools() -> Song {
        let query = PFQuery(className: Song.parseClassName())
        query.whereKey("name", equalTo: "Swimming Pools")
        return try! query.getFirstObject() as! Song
    }

    func getNever() -> Song {
        let query = PFQuery(className: Song.parseClassName())
        query.whereKey("name", equalTo: "We Are Never Ever Getting Back Together")
        return try! query.getFirstObject() as! Song
    }

    func getShakeItOff() -> Song {
        let query = PFQuery(className: Song.parseClassName())
        query.whereKey("name", equalTo: "Shake It Off")
        return try! query.getFirstObject() as! Song
    }

    func getBadBlood() -> Song {
        let query = PFQuery(className: Song.parseClassName())
        query.whereKey("name", equalTo: "Bad Blood")
        return try! query.getFirstObject() as! Song
    }

    func createArtists() {
        let kendrick = Artist(name: "Kendrick Lamar")
        kendrick.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + kendrick.name)
        }

        let taylor = Artist(name: "Taylor Swift")
        taylor.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + taylor.name)
        }
    }

    func createSongs() {
        let i = Song(name: "i")
        i.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + i.name)
        }

        let swimmingPools = Song(name: "Swimming Pools")
        swimmingPools.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + swimmingPools.name)
        }

        let weAreNeverEverGettingBackTogether = Song(name: "We Are Never Ever Getting Back Together")
        weAreNeverEverGettingBackTogether.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + weAreNeverEverGettingBackTogether.name)
        }

        let shakeItOff = Song(name: "Shake It Off")
        shakeItOff.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + shakeItOff.name)
        }

        let badBlood = Song(name: "Bad Blood")
        badBlood.saveInBackgroundWithBlock { (success, error) in
            if let error = error {
                print(error.description)
                return
            }
            print("saved " + badBlood.name)
        }
    }
}

