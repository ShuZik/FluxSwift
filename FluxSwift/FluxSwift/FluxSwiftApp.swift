//
//  FluxSwiftApp.swift
//  FluxSwift
//
//  Created by ShuZik on 23.03.2024.
//

import SwiftUI

@main
struct FluxSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            TaskView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
