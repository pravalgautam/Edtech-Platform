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
    @State private var presentSideMenu = false
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                presentSideMenu.toggle()
                            }) {
                                Image(systemName: "line.3.horizontal")
                       
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .accentColor(.pink)
                            }
                            .frame(width: 24, height: 24)
                            .padding(.leading, 30)
                            
                            Text("</>")
                                .foregroundStyle(.green)
                                .font(.title3)
                                .font(.title3)
                            Text("Codable")
                                .bold()
                                .font(.title3)
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(Color.white)
                    .zIndex(1)
                    .shadow(radius: 0.3)
                    .alignmentGuide(.top, computeValue: { d in d[.top] })
                    .background(Color.gray.opacity(0.8))
             
                }
                
                Spacer()
                TabBarView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
         
            
            SideMenu()
        }
     
        
    }
    
    @ViewBuilder
    private func SideMenu() -> some View {
        SidebarView(isShowing: $presentSideMenu, direction: .leading) {
            SideMenuViewContents(presentSideMenu: $presentSideMenu)
                .frame(width: 300)
        }
    }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
