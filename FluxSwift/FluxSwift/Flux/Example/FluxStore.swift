//
//  PlayerTwoStore.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine

final class FluxStore: ObservableObject {
    
    @Published var playerState: FluxState = .init()
    
    func add(newPlayer: Player) {
        playerState.players.append(newPlayer)
    }
    
    func update(name: String) {
        debugPrint("update \(name)")
    }
}