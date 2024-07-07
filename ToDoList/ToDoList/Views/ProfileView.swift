//
//  ProfileView.swift
//  ToDoList
//
//  Created by MacBook Air on 7/1/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // info: name , email, member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name:")
                            .bold()
                        Text("Iman Barzegaran")
                    }
                    .padding()
                    HStack {
                        Text("Email:")
                            .bold()
                        Text("Iman Barzegaran")
                    }
                    .padding()
                    HStack {
                        Text("Member since:")
                            .bold()
                        Text("Iman Barzegaran")
                    }
                    .padding()
                  
                }
                .padding()
                
                // sign out
                Button("Log Out") {
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                Spacer()
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
