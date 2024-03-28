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
            print("1")
        case .toggleCompletion:
            print("2")
        case .delete:
            print("3")
//        case close:
//            print("Close")
        }
        
        objectWillChange.send(store)
    }
}
