//
//  PlayerTwoDispatcher.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine

final class ToDoDispatcher: ObservableObject, Dispatcher {
    
    var objectWillChange: PassthroughSubject<ToDoStore, Never> = .init()
    private(set) var store: ToDoStore = .init()
    
    func dispatch(action: ToDoAction) {
        
        switch action {
        case ToDoAction.testData:
            debugPrint("PlayerAction.testData")
        case let ToDoAction.testUpdate(name):
            debugPrint("PlayerAction.testUpdate \(name)")
        case let ToDoAction.addPlayer(name, color):
            debugPrint("PlayerAction.addPlayer \(name)")
            store.add(newPlayer: Player(name: name))
        case let ToDoAction.deletePlayer(index):
            debugPrint("PlayerAction.deletePlayer \(index)")
        }
        
        objectWillChange.send(store)
    }
    
}
