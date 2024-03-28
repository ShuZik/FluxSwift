//
//  1111.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

protocol Reducer {
    
    associatedtype StateType
    func reduce(state: StateType, action: ActionRedux) -> StateType
}

