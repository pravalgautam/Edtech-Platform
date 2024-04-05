//
//  ContentView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI
import AVKit


struct ContentView: View {
    @State private var items: [String] = []
    var body: some View {
    
            VStack {
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .font(.title)
                    Text("</>")
                        .foregroundStyle(.green)
                        .font(.title3)
                        .font(.title3)
                    Text("Codable")
                        .bold()
                        .font(.title3)
                    Spacer()
                }
             
                       
            

           
            Spacer()
                    TabBarView()
                
            }

        
    }
}

#Preview {
    ContentView()
}

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Update code here if needed
    }
}
