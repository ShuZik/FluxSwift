//
//  Dispatcher.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

/// For Flux
public protocol Dispatcher {

    associatedtype StateType
    func dispatch(action: StateType)
}
