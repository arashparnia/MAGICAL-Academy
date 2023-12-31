//
//  MAGICAL_AcademyApp.swift
//  MAGICAL Academy
//
//  Created by arash parnia on 11/2/23.
//
import SwiftUI
import AVFoundation
import CoreData

@main
struct MAGICAL_Academy: App {
    let persistenceController = PersistenceController.shared
    

    private let logger = Logger()
    //    init() {
    //            configureAudioSession()
    //        }
    var body: some Scene {
        WindowGroup {
            
            SearchDataContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
                
//            AddDataContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
//                .onAppear {
//                    logger.log("App onAppear called.", level: .debug)
//                    // Check if a thread ID exists in UserDefaults
//                    if let existingThreadId = UserDefaults.standard.string(forKey: "ThreadId") {
//                        logger.log("Thread ID already exists: \(existingThreadId)", level: .debug)
//                    } else {
//                        // Create a background queue for the initial setup
//                        DispatchQueue.global().async {
//                            logger.log("Dispatch started.", level: .debug)
//                            
//                            // Create an instance of AssistantGenerator and call generateAndStoreThreadId
//                            let assistantGenerator = AssistantGenerator(difficulty: 1, age: 4)
//                            assistantGenerator.generateAndStoreThreadId { result in
//                                switch result {
//                                case .success(let newThreadId):
//                                    // Thread ID generated and stored successfully
//                                    UserDefaults.standard.set(newThreadId, forKey: "ThreadId")
//                                    logger.log("ThreadId generated: \(newThreadId)", level: .debug)
//                                case .failure(let error):
//                                    // Handle the error if thread ID generation fails
//                                    logger.log("Error generating thread ID: \(error)", level: .error)
//                                }
//                            }
//                            
//                            logger.log("Dispatch in progress.", level: .debug)
//                        }
//                    }
//                }
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//        }
    
//    private func configureAudioSession() {
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback)
//            try AVAudioSession.sharedInstance().setActive(true)
//        } catch {
//            print("Failed to set audio session category. Error: \(error)")
//        }
 
