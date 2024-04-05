//
//  CodableApp.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI



@main
struct YourApp: App {
    @StateObject var enrollManager =  EnrollmentManager()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
        
      }      .environmentObject(enrollManager)
    }
  }
}
