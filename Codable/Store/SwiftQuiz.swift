//
//  SwiftQuiz.swift
//  Codable
//
//  Created by Praval Gautam on 01/04/24.

import Foundation

struct QuizQuestion {
    let question: String
    let options: [String]
    let correctAnswerIndex: Int
    
    func isAnswerCorrect(_ selectedIndex: Int) -> Bool {
        return selectedIndex == correctAnswerIndex
    }
}

let swiftQuiz: [QuizQuestion] = [
    QuizQuestion(
        question: "What is the keyword used to refer to the current instance of a class in Swift?",
        options: ["self", "this", "Me", "current"],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "Which keyword is used to define a constant in Swift?",
        options: ["let", "var", "const", "define"],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "What does the abbreviation 'API' stand for in Swift?",
        options: ["Application Programming Interface", "Apple Programming Interface", "Automated Programming Interface", "Application Protocol Interface"],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "Which collection type in Swift guarantees the insertion order?",
        options: ["Array", "Set", "Dictionary", "LinkedList"],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "In Swift, what is the primary purpose of a didSet property observer?",
        options: ["To respond to changes after a property's value is set", "To validate property values before setting them", "To initialize the property's value", "To ensure thread safety during property access"],
        correctAnswerIndex: 0
    )
]
let dsaQuiz: [QuizQuestion] = [
    QuizQuestion(
        question: "What data structure is typically used to implement a Last-In-First-Out (LIFO) behavior?",
        options: ["Stack", "Queue", "Array", "Linked List"],
        correctAnswerIndex: 0
    ),
    QuizQuestion(
        question: "Which sorting algorithm has the best time complexity in the average case?",
        options: ["Merge Sort", "Bubble Sort", "Insertion Sort", "Quick Sort"],
        correctAnswerIndex: 3
    ),
    QuizQuestion(
        question: "What is the time complexity of searching in a binary search tree (BST) with n nodes?",
        options: ["O(1)", "O(log n)", "O(n)", "O(n log n)"],
        correctAnswerIndex: 1
    ),
    QuizQuestion(
        question: "Which data structure is typically used to implement a First-In-First-Out (FIFO) behavior?",
        options: ["Stack", "Queue", "Array", "Linked List"],
        correctAnswerIndex: 1
    ),
    QuizQuestion(
        question: "What is the worst-case time complexity of the quicksort algorithm?",
        options: ["O(n log n)", "O(n^2)", "O(n)", "O(log n)"],
        correctAnswerIndex: 1
    )
]
