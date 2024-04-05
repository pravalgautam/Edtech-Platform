//
//  CourseView.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct CourseView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 140, maximum: 190))
    ]
    var body: some View {
        VStack{
            HStack(alignment:.center){
                 CustomBackButton()
               
                Text("Courses")
                    .padding(.horizontal,120)
                    .bold()
            }.padding()
            
            ScrollView(showsIndicators:false) {
                 LazyVGrid(columns: columns, spacing: 10) {
                     ForEach(coursesArr, id: \.id) { course in
                         NavigationLink(destination: (CourseDetailView(course: course))) {
                             CousesCard(course: course)
                         }
                       
                     }
                 }
                 .padding()
             }
            .navigationBarBackButtonHidden(true)
         
        }
    }
}

#Preview {
    CourseView()
}

struct CousesCard: View {
    var course : CourseData
    var body: some View {
        VStack {
            ZStack {
                Image(course.image)
            }
            .frame(width: 180, height: 150)
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
               
            }.padding(.horizontal,4)
 
           
            Spacer()
        }
        .frame(width: 180, height: 330)
      
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 2))
    }
}
struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left")
                .font(.title2)
                .foregroundColor(Color(UIColor.label))
        }
    }
}

