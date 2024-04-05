//
//  DsaTest.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.
//

import SwiftUI

struct  DsaTest: View {
    @State private var currentQuestionIndex = 0
    @State private var isQuizFinished = false
    @State private var selectedAnswerIndex: Int? = nil
    @State private var score = 0
    
    var body: some View {
        VStack {
            if isQuizFinished {
                Text("Quiz Finished! Your Score: \(score)/\(dsaQuiz.count)")
                    .font(.title)
                    .padding()
                Button("Restart Quiz") {
                    restartQuiz()
                }
                .padding()
            } else {
                VStack (alignment:.leading){
                    Text("Question \(currentQuestionIndex + 1)/\(dsaQuiz.count)")
                        .font(.title2)
                        .padding()
                    Text(dsaQuiz[currentQuestionIndex].question)
                        .bold()
                        .padding()
                    Spacer()
                    ForEach(0..<dsaQuiz[currentQuestionIndex].options.count, id: \.self) { index in
                        Button(action: {
                            selectedAnswerIndex = index
                        }) {
                            Text(dsaQuiz[currentQuestionIndex].options[index])
                                .padding()
                                .background(selectedAnswerIndex == index ? Color.yellow.opacity(0.5) : Color.clear)
                                .cornerRadius(10)
                        }
                        .foregroundStyle(.red)
                        
                       .disabled(selectedAnswerIndex != nil)
                    }
                    Spacer()
                    Button("Submit Answer") {
                        submitAnswer()
                    }
                    .font(.title2)
                    .frame(width: 350,height: 60)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(10)
                    .padding()
                    .disabled(selectedAnswerIndex == nil)
                }
            }
        }
    }
    
    func submitAnswer() {
        if let selectedAnswerIndex = selectedAnswerIndex {
            if dsaQuiz[currentQuestionIndex].isAnswerCorrect(selectedAnswerIndex) {
                score += 1
            }
            if currentQuestionIndex + 1 < dsaQuiz.count {
                currentQuestionIndex += 1
                self.selectedAnswerIndex = nil
            } else {
                isQuizFinished = true
            }
        }
    }
    
    func restartQuiz() {
        currentQuestionIndex = 0
        isQuizFinished = false
        selectedAnswerIndex = nil
        score = 0
    }
}
#Preview {
    DsaTest()
}
