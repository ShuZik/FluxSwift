//
//  ToDoDispatcher.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine
import CoreData

final class ToDoDispatcher: ObservableObject {
    
    private(set) var store: ToDoStore = .init()
    private var context: NSManagedObjectContext = .init(coder: <#T##NSCoder#>)
    
    var objectWillChange: PassthroughSubject<ToDoStore, Never> = .init()
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func dispatch(action: ToDoAction) {
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
//            if let item = fetchToDoItem(by: id) {
//                context.delete(item)
//                saveContext()
//            }
        }
        
        objectWillChange.send(store)
    }
    
    private func saveContext() {
        do {
            try context.save()
        } catch {
            print("Failed to save context: \(error)")
        }
    }
    
    private func fetchToDoItem(by id: UUID) -> ToDoItem? {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as CVarArg)
        return (try? context.fetch(request))?.first
    }
}
