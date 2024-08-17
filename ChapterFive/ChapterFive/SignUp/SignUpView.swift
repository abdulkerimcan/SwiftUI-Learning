//
//  ContentView.swift
//  ChapterFive
//
//  Created by Abdulkerim Can on 13.08.2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var address1: Address = Address()
    @State private var address2: Address = Address()
    @State private var lessThanTwo: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $name)
                    TextField("Last Name", text: $lastName)
                } header: {
                    Text("Names")
                }
                
                Section {
                    TextField("Street Address", text: $address1.street)
                    TextField("City", text: $address1.city)
                    TextField("Postal Code", text: $address1.postalCode)
                    Toggle(isOn: $lessThanTwo) {
                        Text("Have you lived here for 2+ years")
                    }
                } header: {
                    Text("Current Address")
                }
                
                
                
                if !lessThanTwo {
                    Section {
                        TextField("Street Address", text: $address2.street)
                        TextField("City", text: $address2.city)
                        TextField("Postal Code", text: $address2.postalCode)
                    } header: {
                        Text("Previous Address")
                    }
                }
                
                Section {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                
                Button {
                    //Action
                } label: {
                    Text("Sign Up")
                }

            }
            .navigationTitle("Sing Up")
        }
    }
}

#Preview {
    SignUpView()
}
