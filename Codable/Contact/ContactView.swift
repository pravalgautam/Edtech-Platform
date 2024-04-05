//
//  ContactView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack{
            ScrollView(showsIndicators:false){
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
                Text("Learn code online is a new project that is focused on teaching programming with a project based approach. All of our courses are designed keeping in mind that students are learning programming to build a project. We cover a whole range of programming courses like Learn C as your first programming language, Complete Android development course with java and 10 apps, Complete iOS course with 10 apps, Complete front end developer course, ReactS course, PHP with projects and more are added every month.")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .padding(.vertical,20)
                HStack(){
                    Image(systemName: "envelope")
                        .font(.caption)
                    Text("pravalgautam40@gmail.com")
                        .accentColor(Color(UIColor.label))
                        .font(.caption)
                    Spacer()
                    
                }.padding(.vertical,10)
                HStack(){
                    
                    Text("Share & Invite")
                        .accentColor(.black)
                        .font(.caption)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .font(.callout)
                        .padding(.horizontal,10)
                    
                }.padding(.vertical,10)
                Text("V1.2 14/10/2023")
                    .foregroundStyle(.gray)
                    .font(.caption2)
            }
        }.padding(.vertical,30)
            .padding(10)
    }
}

#Preview {
    ContactView()
}
