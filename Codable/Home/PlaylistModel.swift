//
//  PlaylistModel.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import Foundation

struct PlaylistModel: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
}

var playlistArr  = [PlaylistModel(title: "ede", artist: "dede")]
