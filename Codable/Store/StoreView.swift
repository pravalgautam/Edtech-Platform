//
//  StoreView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI
import AVKit

struct StoreView: View {
    var body: some View {
        VStack(alignment:.leading){
            ScrollView(showsIndicators:false){
                HStack{
                    Text("Courses")
                        .bold()
                        .font(.title3)
                    Circle()
                        .frame(width: 25)
                        .foregroundColor(.gray)
                        .overlay{
                            Text("43")
                                .foregroundStyle(.white)
                        }
                    Spacer()
                    NavigationLink("View all") {
                        CourseView()
                    }
                    .foregroundColor(Color(UIColor.label))
                }.padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(coursesArr, id: \.id) { course in
                            NavigationLink(destination: CourseDetailView(course: course)) {
                                CourseCard(course: course)
                            }
                            .buttonStyle(PlainButtonStyle()) 
                        }
                    }
                    .padding(.horizontal, 20)
                }

                HStack{
                    Text("Tests")
                        .bold()
                        .font(.title3)
                    Circle()
                        .frame(width: 25)
                        .foregroundColor(.gray)
                        .overlay{
                            Text("4")
                                .foregroundStyle(.white)
                        }
                    Spacer()
                    NavigationLink("View all") {
                      TestView()
                    }
                    .foregroundColor(Color(UIColor.label))
                }.padding(.horizontal, 20)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        TestCard(image: "t6") {
                            SwiftTest()
                        }
                        TestCard(image: "t2") {
                            DsaTest()
                        }
                      
                    }.padding(.horizontal, 20)
                }
                
            }
            
        }
    }
}

#Preview {
    StoreView()
}


struct CourseCard: View {
    var course: CourseData

    var body: some View {
        VStack {
            ZStack {
                Image(course.image)
                    .resizable()
            }
            .frame(width: 300, height: 180)
            .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text(course.title)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Text("\(course.lessons) Lessons")
                    .foregroundStyle(.gray)
                Text(course.enroll)
                    .font(.callout)
                    .bold()
                    .textCase(.uppercase)
            }
            .padding(.horizontal, 4)
            
            Spacer()
        }
        .frame(width: 300, height: 330)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1))
        .shadow(radius: 10)
    }
}

struct TestCard<Content: View>: View {
    var image: String
    var testView: Content

    init(image: String, @ViewBuilder testView: () -> Content) {
        self.image = image
        self.testView = testView()
    }

    var body: some View {
        VStack {
            ZStack {
                Image(image)
                    .resizable()
            }
            .frame(width: 180, height: 150)
            .cornerRadius(20)

            VStack(alignment: .leading) {
                Text("Figma | UI UX Development with Figma")
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Text("3 Lessons")
                    .foregroundStyle(.gray)
                NavigationLink("Start Now") {

                    testView
                }
                .frame(width: 170,height: 49)
               
                .background(.green)
                .cornerRadius(30)
                .foregroundColor(.white)
                .font(.callout)
                .bold()
                .textCase(.uppercase)
            }
            .padding(.horizontal, 4)

            Spacer()
        }
        .frame(width: 180, height: 290)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
                .shadow(radius: 10)
        )
    }
}
