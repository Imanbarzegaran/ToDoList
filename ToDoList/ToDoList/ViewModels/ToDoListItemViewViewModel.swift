//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by MacBook Air on 7/1/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation


/// ViewModel for single to do list item (each row in item list)


class ToDoListItemViewViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
    
}
