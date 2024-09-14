//
//  LoginView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @Binding var user: User
    let didTap: () -> Void
    
    var body: some View {
        
        VStack {
            TextField("Username",
                      text: $user.username,
                      prompt: Text("Username?"))
            SecureField("Password",
                        text: $user.password,
                        prompt: Text("Password"))
            Button {
                didTap()
            } label: {
                Text("Login")
            }
        }
        .padding(.horizontal, 8)
        .textFieldStyle(.roundedBorder)
        .onChange(of: user) { newValue in
            print("The user inputted: \(newValue)")
        }
    }
}
