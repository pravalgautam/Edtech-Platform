//
//  EnrolledPlaylistView.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct EnrolledPlaylistView: View {
    var course: CourseData
    @EnvironmentObject var enrollManager : EnrollmentManager
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                if enrollManager.enrollArray.count>0{
                    ForEach(enrollManager.enrollArray,id: \.id){
                        item in
                        NavigationLink(destination: CourseDetailView(course: course)) {
                            EnrooledCard(course: item).padding(.horizontal, 10)                        }
                      
                    
                    }
                }
                
            }}
    }
}

#Preview {
    EnrolledPlaylistView(course:coursesArr[0])
}

struct EnrooledCard:View {
    @EnvironmentObject var enrollManager : EnrollmentManager
    var course :  CourseData
    var body: some View {
        HStack(alignment:.top){
            Image(course.image)
         
                .resizable()
                .frame(width: 120,height: 80)
                .cornerRadius(10)
    
            VStack(alignment:.leading){
                Text(course.title)
                    .bold()
                Text("\(course.lessons) Lessons")
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: {
                enrollManager.removeItem(item: course)
            }, label: {
                Image(systemName: "trash")
                    .resizable()
                    .accentColor(.red)
                    .frame(width: 20,height: 20)
            })
         
        }
    
    }
}
