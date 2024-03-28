//
//  Store.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

public protocol Store_Redux {
    
    associatedtype ActionType: ActionRedux
    func reduce(action: ActionType)
}

