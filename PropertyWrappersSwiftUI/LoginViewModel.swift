//
//  LoginViewModel.swift
//  PropertyWrappersSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import Foundation


final class LoginViewModel: ObservableObject {

    enum CurrentState {
        case loading
        case notLoggedIn
        case loggedIn
    }
    
    @Published var user: User = .init()
    @Published var state: CurrentState = .notLoggedIn

    func login() {
        
        guard !user.username.isEmpty && !user.password.isEmpty else {
            return
        }
        
        state = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
       
            self?.state = .loggedIn
        }
    }
    
    func logout() {
        self.state = .notLoggedIn
    }
}
