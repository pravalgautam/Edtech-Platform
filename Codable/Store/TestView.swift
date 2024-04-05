//
//  TestView.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct TestView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 140, maximum: 190))
    ]
    var body: some View {
        VStack{
            HStack(alignment:.center){
                 CustomBackButton()
               
                Text("Tests")
                    .padding(.horizontal,120)
                    .bold()
            }.padding()
            
            ScrollView(showsIndicators:false) {
                 LazyVGrid(columns: columns, spacing: 10) {
                   
                     TestCard(image: "t4") {
                         SwiftTest()
                     }
                     TestCard(image: "t2") {
                         DsaTest()
                     }
                     TestCard(image: "t5") {
                         SwiftTest()
                     }
                     TestCard(image: "t1") {
                         DsaTest()
                     }
                  
                 }
                 .padding()
             }
            .navigationBarBackButtonHidden(true)
         
        }
    }
}

#Preview {
    TestView()
}
