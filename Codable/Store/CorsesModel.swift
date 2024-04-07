//
//  CorsesModel.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import Foundation

struct CourseData {
    var id = UUID()
    var image: String
    var title: String
    var lessons: Int
    var enroll: String
    var enrollment: Bool
    var author: String
    var authorImage: String 
    var description: String
}

var coursesArr = [
    CourseData(image: "c1", title: "Multimedia Course | Kinm Uta", lessons: 4, enroll: "Enroll For Free", enrollment: false, author: "Arijit Singh", authorImage: "author1", description: "This is a multimedia course covering various aspects of multimedia development."),
    CourseData(image: "c2", title: "iOS Development | Olo Uat", lessons: 5, enroll: "Enroll For Free", enrollment: false, author: "Gaurav Kapoor ", authorImage: "author2", description: "Learn iOS app development with Swift programming language."),
    CourseData(image: "c3", title: "UX/UI Design | Epo Rar", lessons: 3, enroll: "Enroll For Free", enrollment: false, author: "Dhoni", authorImage: "author3", description: "Master the principles of user experience and user interface design."),
    CourseData(image: "c4", title: "Data Science | Ipa Nate", lessons: 2, enroll: "Enroll For Free", enrollment: false, author: "Guatam Gambhir", authorImage: "author4", description: "Discover the world of data science and its applications."),
    CourseData(image: "c5", title: "Web Development | Aro Nui", lessons: 1, enroll: "Enroll For Free", enrollment: false, author: "Bravo", authorImage: "author5", description: "Build dynamic websites and web applications with modern web development technologies."),
    CourseData(image: "c6", title: "Graphic Design | Ule Pia", lessons: 10, enroll: "Enroll For Free", enrollment: false, author: "Patel", authorImage: "author6", description: "Explore the principles of graphic design and develop your creative skills.")
]
struct PlaylistModel: Identifiable{

    
    var id = UUID()
    var image: String
    var title: String
    var lessons: Int

}
