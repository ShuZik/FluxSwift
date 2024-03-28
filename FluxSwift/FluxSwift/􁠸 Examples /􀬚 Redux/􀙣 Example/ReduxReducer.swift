//
//  PlayerStateReducer.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation

struct ReduxReducer: Reducer {
    
    func reduce(state: ReduxState, action: ActionRedux) -> ReduxState {
        
        var state = state
        
        switch action {
        case ReduxAction.testData:
            debugPrint("PlayerAction.testData")
        case let ReduxAction.testUpdate(name):
            debugPrint("PlayerAction.testUpdate \(name)")
        case let ReduxAction.addPlayer(name, color):
            debugPrint("PlayerAction.addPlayer \(name)")
            state.add(newPlayer: Player(name: name))
        case let ReduxAction.deletePlayer(index):
            debugPrint("PlayerAction.deletePlayer \(index)")
        default:
            debugPrint("NULL")
        }
        
        return state
    }
    
}
