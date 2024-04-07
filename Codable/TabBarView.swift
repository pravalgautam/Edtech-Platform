//
//  TabBarView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            StoreView()
                .tabItem {
                    Image(systemName: "storefront")
                    Text("Store")
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            NewsFeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Newsfeed")
                }
           ContactView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Contact")
                }
        }
   

    }
}
#Preview {
    TabBarView()
        
}
