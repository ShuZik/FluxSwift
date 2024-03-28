//
//  TaskStore.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import Foundation
import Combine

final class TaskStore: ObservableObject {
    
    @Published var playerState: TaskState = .init()
    
    func add(newPlayer: ToDoItem) {
//        playerState.players.append(newPlayer)
    }
    
    func update(name: String) {
        debugPrint("update \(name)")
    }
//    
//case add(title: String)
//case toggleCompletion(id: UUID)
//case delete(id: UUID)
//case close
}
