//
//  PlayerTwoView.swift
//  FluxSwift
//
//  Created by ShuZik on 23.03.2024.
//

import SwiftUI

struct FluxView: View {
    @EnvironmentObject private var playerDispatcher: FluxDispatcher
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(playerDispatcher.store.playerState.players, id: \.id) { player in
                    HStack {
                        Text(player.name)
                        Spacer()
                    }
                    .padding()
                }
            }
            
            Spacer()
            
            Button {
                playerDispatcher.dispatch(action: FluxAction.addPlayer(name: "ShuZik", color: 0))
            } label: {
                Text("Update State")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    FluxView()
        .environmentObject(FluxDispatcher())
}
