//
//  kleinowFirebaseIntroApp.swift
//  kleinowFirebaseIntro
//
//  Created by Tayler Kleinow on 3/22/22.
//

import SwiftUI
import Firebase

@main
struct kleinowFirebaseIntroApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
