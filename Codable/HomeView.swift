//
//  HomeView.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//
import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    @StateObject var enrollManager = EnrollmentManager()

    var body: some View {
        if items.isEmpty {
            NoDataCard()
        } else {
            List{
                ForEach(items){
                    item in
                    EnrolledPlaylistView(course: CourseData(id: UUID(), image: item.image, title: item.title, lessons: item.lessons, enroll: "", enrollment: false, author: "", authorImage: "", description: ""))
                }.onDelete { indexes in
                    for index in indexes{
                        deleteItem(item: items[index])
                    }
                }
            }
        }
    }
    func deleteItem(item :DataItem){
        context.delete(item)
    }
}

struct EnrolledPlaylistView: View {
    var course: CourseData

    var body: some View {
        NavigationLink(destination: CourseDetailView(course: course)) {
            EnrooledCard(course: course)
                .padding(.horizontal, 10)
        }
    }
  
}

struct EnrooledCard: View {
    var course: CourseData

    var body: some View {
        HStack(alignment: .top) {
            Image(course.image)
                .resizable()
                .frame(width: 120, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(course.title)
                    .bold()
                Text("\(course.lessons) Lessons")
                    .foregroundColor(.gray)
            }
            Spacer()
       
        }
    }
}

struct NoDataCard: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("notfound")
                .resizable()
                .frame(width: 300, height: 250)
            
            Text("You haven't enrolled in any courses")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            Text("Go to the course to enroll or purchase courses")
                .multilineTextAlignment(.center)
        }
    }
}
