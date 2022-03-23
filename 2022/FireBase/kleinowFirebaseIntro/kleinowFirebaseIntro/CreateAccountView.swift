//
//  CreateAccountView.swift
//  kleinowFirebaseIntro
//
//  Created by Tayler Kleinow on 3/23/22.
//

import SwiftUI
import FirebaseAuth

struct CreateAccountView: View {
    @State var Email = ""
    @State var Password = ""
    @State var VerifyPassword = ""
    @Binding var isLoggedIn:Bool
    
    var body: some View {
        VStack {
            TextField("Email", text: $Email)
                .padding()
                .border(Color.black)
                .padding()
            TextField("Password", text: $Password)
                .padding()
                .border(Color.black)
                .padding()
            TextField("Verify Password", text: $VerifyPassword)
                .padding()
                .border(Color.black)
                .padding()
            
            Button {
                //Create the user
                if Password != VerifyPassword {
                    return
                }
                
                Auth.auth().createUser(withEmail: Email, password: Password) { result, error in
                    if error != nil{
                        print("There was trouble creating the account")
                        print(error!.localizedDescription)
                        return
                    }
                    
                    print(result?.user.email ?? "Ooops")
                    isLoggedIn = true
                    
                }
            } label: {
                Text("Create Account")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding()
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView(isLoggedIn: .constant(false))
    }
}
