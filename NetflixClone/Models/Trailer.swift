//
//  Trailer.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/29/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
