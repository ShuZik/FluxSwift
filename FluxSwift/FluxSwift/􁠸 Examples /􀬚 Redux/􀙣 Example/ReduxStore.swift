//
//  PlayerStore.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine

final class ReduxStore: ObservableObject, Store_Redux {
    
    var objectWillChange: PassthroughSubject<ReduxState, Never> = .init()
    @Published var playerState: ReduxState
    
    private let playerOneStateReducer: ReduxReducer = .init()
    
    init(playerState: ReduxState) {
        self.playerState = playerState
    }
    
    func reduce(action: ReduxAction) {
        playerState = playerOneStateReducer.reduce(state: playerState, action: action)
        objectWillChange.send(playerState)
    }
}
