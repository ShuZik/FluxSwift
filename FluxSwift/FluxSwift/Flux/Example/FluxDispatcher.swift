//
//  PlayerTwoDispatcher.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine

final class FluxDispatcher: ObservableObject, Dispatcher {
    
    var objectWillChange: PassthroughSubject<FluxStore, Never> = .init()
    private(set) var store: FluxStore = .init()
    
    func dispatch(action: FluxAction) {
        
        switch action {
        case FluxAction.testData:
            debugPrint("PlayerAction.testData")
        case let FluxAction.testUpdate(name):
            debugPrint("PlayerAction.testUpdate \(name)")
        case let FluxAction.addPlayer(name, color):
            debugPrint("PlayerAction.addPlayer \(name)")
            store.add(newPlayer: Player(name: name))
        case let FluxAction.deletePlayer(index):
            debugPrint("PlayerAction.deletePlayer \(index)")
        }
        
        objectWillChange.send(store)
    }
    
}
