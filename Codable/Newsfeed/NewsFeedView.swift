//
//  NewsFeedView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI

struct NewsFeedView: View {
    var body: some View {
        VStack{
            ScrollView(showsIndicators:false){
                NewsFeedCard()
                NewsFeedCard()
                NewsFeedCard()
            }
        }
    }
}
//
//#Preview {
//    NewsFeedView()
//}




struct NewsFeedCard: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Circle()
                    .frame(width: 70)
                    .foregroundColor(.green)
                    .overlay {
                        Image(systemName: "newspaper")
                            .accentColor(.white)
                    }
                VStack(alignment:.leading){
                    Text("Article")
                    
                        .bold()
                    Text("3 year ago")
                        .foregroundStyle(.gray)
                        .font(.footnote)
                }
                .padding()
            }
            ZStack{
                LinearGradient(colors: [Color.red,Color.purple], startPoint: .top, endPoint: .bottom)
                VStack{
                    Text("</>")
                        .font(.title)
                        .foregroundStyle(.green)
                    Text("Codable")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }.frame(height: 220)
                .cornerRadius(20)
            Text("My email is showing in Video")
                .bold()
                .padding(.vertical,2)
            Text("Student email sometime show up in video. this is a security feature to avoid piracy")
                .font(.callout)
                .padding(.vertical,2)
            HStack(spacing:30){
                Image(systemName: "message")
                    
                Image(systemName: "square.and.arrow.up")
                Spacer()
                Image(systemName: "bookmark")
            }.padding()
        }.padding(10)
    }
}
#Preview {
    NewsFeedCard()
}
