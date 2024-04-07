//
//  CodableApp.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI

import SwiftData

@main
struct YourApp: App {
    @StateObject var enrollManager =  EnrollmentManager()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
        
      }     .modelContainer(for: DataItem.self)
      .environmentObject(enrollManager)
    }
  }
}
