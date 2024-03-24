//
//  Store.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

public protocol StoreFlux {
    
    associatedtype ActionType: ActionFlux
    func dispatch(action: ActionType)
}

