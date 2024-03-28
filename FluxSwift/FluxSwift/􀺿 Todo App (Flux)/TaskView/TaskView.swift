//
//  TaskView.swift
//  FluxSwift
//
//  Created by ShuZik on 28.03.2024.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject private var playerDispatcher: ToDoDispatcher

    var body: some View {
        ZStack {
            // Your existing content
            VStack {
//                ScrollView {
//                    ForEach(playerDispatcher.store.playerState.players, id: \.id) { player in
//                        HStack {
//                            Text(player.name)
//                            Spacer()
//                        }
//                        .padding()
//                    }
//                }
                Spacer()
            }
            .padding()

            CircularButtonView()
        }
    }
    
    // MARK: - Top Layer || Wave Layer
    private func CircularButtonView() -> some View {
        // Floating button
        VStack {
            Spacer()
            HStack {
                Spacer()
                CircularButton("plus") {
                    playerDispatcher.dispatch(action: ToDoAction.openTaskView)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ToDoView()
        .environmentObject(ToDoDispatcher())
}

