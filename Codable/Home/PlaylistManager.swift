//
//  PlaylistManager.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import Combine

class PlaylistManager: ObservableObject {
    @Published var playlist: [PlaylistItem] = []
    
    func addItem(title: String, artist: String) {
        let newItem = PlaylistItem(title: title, artist: artist)
        playlist.append(newItem)
    }
    
    func removeItem(at index: Int) {
        playlist.remove(at: index)
    }
}

