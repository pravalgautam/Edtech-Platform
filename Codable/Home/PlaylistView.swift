//
//  PlaylistView.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct AddToPlaylistView: View {
    @ObservedObject var playlistManager: PlaylistManager
    
    var body: some View {
        VStack {
            Button("Add to Playlist") {
                playlistManager.addItem(title: "Song Title", artist: "Artist Name")
            }
        }
    }
}

struct PlaylistView: View {
    @ObservedObject var playlistManager: PlaylistManager
    
    var body: some View {
        List {
            ForEach($playlistManager.playlist) { item in
                Text("\(item.title) - \(item.artist)")
            }
            .onDelete(perform: deleteItems)
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        $playlistManager.playlist.remove(atOffsets: offsets)
    }
}

#Preview(body: {
    PlaylistView(playlistManager: PlaylistModel(title: "jj", artist: "nn"))
})
