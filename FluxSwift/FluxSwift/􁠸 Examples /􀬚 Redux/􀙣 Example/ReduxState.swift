//
//  PlayerState.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation

struct ReduxState {
    
    var players: [Player] = .init()
    
    mutating func add(newPlayer: Player) {
        debugPrint("update \(newPlayer)")
        players.append(newPlayer)
    }
    
    mutating func update(name: String) {
        debugPrint("update \(name)")
    }
}



