//
//  LoggedInView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import Foundation
import SwiftUI

struct LoggedInView: View {
    
    let didTap: () -> Void
    
    var body: some View {
        
        VStack {
            Text("Hey, you're now logged in")
            Button {
                didTap()
            } label: {
                Text("Logout")
            }
        }
    }
}
