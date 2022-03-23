//
//  LoggedInView.swift
//  kleinowFirebaseIntro
//
//  Created by Tayler Kleinow on 3/23/22.
//

import SwiftUI
import FirebaseAuth

struct LoggedInView: View {
    @Binding var loggedOut:Bool
    
    var body: some View {
        VStack {
            Button("Logout") {
                
                do {
                    try Auth.auth().signOut()
                    loggedOut = false
                    print("logout")
                } catch {
                    print(error.localizedDescription)
                }
            }
            Text("You are logged in")
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInView(loggedOut: .constant(false))
    }
}
