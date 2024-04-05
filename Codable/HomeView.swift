//
//  HomeView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//

import SwiftUI

struct HomeView: View {
    var course: CourseData
    @StateObject var enrollManager = EnrollmentManager()
    var body: some View {
    
        VStack{
            EnrolledPlaylistView(course: course)
            
        }
        
    }
}

#Preview {
    HomeView(course: coursesArr[0])
}

struct NoDataCard:View {
    var body: some View {
        VStack(alignment:.center){
            Image("notfound")
                .resizable()
                .frame(width: 300,height: 250)
           
                Text("You haven't enrolled to any courses")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
               
            
            Text("Go to the course to enroll or purchase to the courses")
                .multilineTextAlignment(.center)
        }
        
        
    }
}

