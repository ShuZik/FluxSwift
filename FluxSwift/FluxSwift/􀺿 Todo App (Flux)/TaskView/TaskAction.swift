//
//  TaskAction.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

enum TaskAction {
    case add(title: String)
    case toggleCompletion(id: UUID)
    case delete(id: UUID)
    case close
}
