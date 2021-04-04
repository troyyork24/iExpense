//
//  ContentView.swift
//  iExpense
//
//  Created by Troy York on 4/4/21.
//

import SwiftUI

class User: ObservableObject {
   @Published var firstName = "Bilbo"
   @Published var lastName = "Baggins"
}

struct ContentView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            
        Text("Your name is \(user.firstName) \(user.lastName).")
            .padding()
        
        TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
