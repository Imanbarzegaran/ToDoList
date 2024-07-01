//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by MacBook Air on 6/30/24.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
