//
//  VideoModel.swift
//  Africa
//
//  Created by Mansi Nerkar on 9/9/23.
//

import Foundation

struct video : Codable,Identifiable{
    let id: String
    let name: String
    let headline: String
    
    //COMPUTED PROPERTY
    
    var thumbnail: String{
        "video-\(id)"
    }
}
