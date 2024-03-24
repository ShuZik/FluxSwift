//
//  PlayerTwoAction.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

enum FluxAction: ActionFlux {
    case testData
    case testUpdate(name: String)
    
    case addPlayer(name: String, color: UInt)
    case deletePlayer(index: Int)
}
