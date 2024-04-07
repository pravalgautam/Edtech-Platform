//
//  CourseDetailView.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct CourseDetailView: View {
    @Environment(\.modelContext) private var context
    @State private var enrollBtn = "Enroll Now"
    var course: CourseData
    @State private var isPlaying = false
    @EnvironmentObject var enrollManager: EnrollmentManager
    
    var body: some View {
        VStack {
            HStack {
                CustomBackButton() 
                Spacer()
            }
            .padding()
            
            Button(action: {
                isPlaying = true
            }) {
                Image(course.image)
                    .resizable()
                    .frame(width: 350, height: 200)
                    .cornerRadius(20)
                    .padding(10)
                    .overlay {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.pink)
                    }
            }
            
            VStack(alignment: .leading, spacing: 15) {
                Text(course.title)
                    .font(.title3)
                    .bold()
                Text("FREE")
                    .foregroundColor(.green)
                    .font(.title3)
                    .bold()
                Divider()
                Text(course.description)
                Divider()
                Text("Available Online")
                Divider()
                Text("Valid for 3 years")
                Divider()
                Text("Author").bold()
                HStack(spacing: 10) {
                    Circle()
                        .frame(width: 60, height: 60)
                        .overlay {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                    Text(course.author)
                }
                Text("\(course.lessons) Lessons")
                Button(action: {
                    addCourse()
                    enrollBtn = "Enrolled"
                }) {
                    Text(enrollBtn)
                        .foregroundColor(.white)
                }
                .frame(width: 350, height: 50)
                .background(Color.green)
                .cornerRadius(5)
                .padding(10)
            }
        }
        .padding(10)
        .navigationBarBackButtonHidden(true)
        .fullScreenCover(isPresented: $isPlaying, content: {
            ZStack {
                VideoPlayerView(videoURL: URL(string: "https://firebasestorage.googleapis.com/v0/b/edtech-bd572.appspot.com/o/daily%20Insight%20-%201080WebShareName.mov?alt=media&token=230900ab-104c-4196-9927-31b499bf18ca")!)
                    .edgesIgnoringSafeArea(.all)
                Button(action: {
                    isPlaying = false
                }) {
                 
                }
                .padding()
            }
        })
    }
    func addCourse(){
        let item = DataItem(title: course.title, image: course.image, lessons: course.lessons)
        context.insert(item)
    }
}

#Preview {
    CourseDetailView(course: coursesArr[0])
}
