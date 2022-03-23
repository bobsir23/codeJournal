//
//  ContentView.swift
//  kleinowFirebaseIntro
//
//  Created by Tayler Kleinow on 3/22/22.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State var isLoggedIn = Auth.auth().currentUser != nil
    
    @ViewBuilder
    var body: some View {
        if isLoggedIn {
            LoggedInView(loggedOut: $isLoggedIn)
        }
        else {
            LoginView(isLoggedIn: $isLoggedIn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
