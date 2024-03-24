//
//  PlayerAction.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

enum ReduxAction: ActionRedux {
    case testData
    case testUpdate(name: String)
    
    case addPlayer(name: String, color: UInt)
    case deletePlayer(index: Int)
}
