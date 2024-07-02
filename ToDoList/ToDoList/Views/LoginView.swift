//
//  LoginView.swift
//  ToDoList
//
//  Created by MacBook Air on 7/1/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button(action: {
                        //
                    },
                           label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    })
                    .padding()
                    
                }
                
                // Create Account
                VStack {
                    Text("New around here?")
                   
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                
            
                .padding(.bottom, 50)
                Spacer()
                
                
            }
            
        }
    }
    
    
}

    
    #Preview {
        LoginView()
    }

