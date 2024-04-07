//
//  SidebarView.swift
//  Codable
//
//  Created by Praval Gautam on 07/04/24.
//

import SwiftUI

struct SidebarView<RenderView:View>: View {
    @Binding var isShowing: Bool
     var direction: Edge
     @ViewBuilder  var content: RenderView
     
     var body: some View {
         ZStack(alignment: .leading) {
             if isShowing {
                 Color.black
                     .opacity(0.3)
                     .ignoresSafeArea()
                     .onTapGesture {
                         isShowing.toggle()
                     }
                 content
                     .transition(.move(edge: direction))
                     .background(
                         Color.black
                     )
             }
         }
         .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
         .ignoresSafeArea()
         .animation(.easeInOut, value: isShowing)
     }
 }
