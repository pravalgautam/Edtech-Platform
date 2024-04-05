//
//  VideoManager.swift
//  Codable
//
//  Created by Praval Gautam on 31/03/24.
//


//import Foundation
//
//
//class VideoManager {
//    static let shared = VideoManager()
//    private let storage = Storage.storage()
//    
//    func uploadVideo(fileURL: URL, fileName: String) async throws -> String {
//        let storageRef = storage.reference().child("videos").child(fileName)
//        
//        do {
//            let data = try Data(contentsOf: fileURL)
//            let metadata = StorageMetadata()
//            metadata.contentType = "video/mp4" // Adjust the content type as per your video file type
//            
//            let uploadTask = storageRef.putData(data, metadata: metadata)
//            _ = try await uploadTask
//            
//            // Once the upload is completed, get the download URL
//            let downloadURL = try await storageRef.downloadURL()
//            return downloadURL.absoluteString
//        } catch {
//            throw error
//        }
//    }
//}
