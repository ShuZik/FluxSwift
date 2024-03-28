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
    
    private(set) var store: ToDoStore
    
    var objectWillChange: PassthroughSubject<ToDoStore, Never> = .init()
    
    init(store: ToDoStore = .init()) {
        self.store = store
    }
    
    func dispatch(action: ToDoAction) {
        switch action {
        case .openTaskView:
            print("1")
        case .toggleCompletion(let id):
            print("2")
        case .delete(let id):
            print("3")
        }
        
        objectWillChange.send(store)
    }
}
