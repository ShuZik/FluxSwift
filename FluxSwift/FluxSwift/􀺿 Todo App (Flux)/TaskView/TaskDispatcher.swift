//
//  TaskDispatcher.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine
import CoreData

final class TaskDispatcher: ObservableObject {
    
    private(set) var store: TaskStore = .init()
    var objectWillChange: PassthroughSubject<TaskStore, Never> = .init()
    

    func dispatch(action: TaskAction) {
        switch action {
        case .add(let title):
//            let newItem = ToDoItem(context: context)
//            newItem.id = UUID()
//            newItem.title = title
//            newItem.isCompleted = false
//            saveContext()
            store.add(newPlayer: <#T##Player#>)
        case .toggleCompletion(let id):
//            if let item = fetchToDoItem(by: id) {
//                item.isCompleted.toggle()
//                saveContext()
//            }
        case .delete(let id):
            store.delete()
        case close:
            print("Close")
        }
        
        objectWillChange.send(store)
    }
}
