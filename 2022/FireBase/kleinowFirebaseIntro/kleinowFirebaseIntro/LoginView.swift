//
//  LoginView.swift
//  kleinowFirebaseIntro
//
//  Created by Tayler Kleinow on 3/23/22.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @Binding var isLoggedIn:Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Need an Account?")
                NavigationLink {
                    CreateAccountView(isLoggedIn: $isLoggedIn)
                } label: {
                    Text("Sign up")
                }
                
                Divider()
                
                TextField("email", text: $email)
                    .padding()
                    .border(Color.black)
                    .padding()
                TextField("password", text: $password)
                    .padding()
                    .border(Color.black)
                    .padding()
                
                Button {
                    print("Login")
                    Auth.auth().signIn(withEmail: email, password: password) { result, error in
                        if error == nil{
                            isLoggedIn = true
                        }
                    }
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .padding()
                }

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(false))
    }
}
