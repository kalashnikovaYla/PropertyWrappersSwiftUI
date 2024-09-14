//
//  ContentView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    ///Как только @StateObject создан, SwiftUI не будет пересоздавать его при перерисовке представления. Это важно для сохранения состояния и уменьшения ненужных вычислений
    @StateObject private var vm = LoginViewModel()
       
       var body: some View {
           
           switch vm.state {
           case .loading:
               ProgressView()
           case .notLoggedIn:
               LoginView(user: $vm.user) {
                   vm.login()
               }
           case .loggedIn:
               LoggedInView {
                   vm.logout()
               }
           }
       }
}


/*
 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
 */
