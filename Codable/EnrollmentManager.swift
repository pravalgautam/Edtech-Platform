//
//  EnrollmentManager.swift
//  Codable
//
//  Created by Praval Gautam on 04/04/24.
//

import Foundation

class EnrollmentManager: ObservableObject{
    @Published private(set) var enrollArray: [CourseData] = []

    func add(item: CourseData){
        enrollArray.append(item)
    }
    func removeItem(item: CourseData){
        enrollArray  = enrollArray.filter{
            $0.id != item.id
        }
    }
}
