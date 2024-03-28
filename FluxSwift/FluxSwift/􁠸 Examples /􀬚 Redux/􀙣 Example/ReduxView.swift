//
//  PlayerOneView.swift
//  FluxSwift
//
//  Created by ShuZik on 23.03.2024.
//

import SwiftUI

struct ReduxView: View {
    @EnvironmentObject private var playerStore: ReduxStore
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(playerStore.playerState.players, id: \.id) { player in
                    HStack {
                        Text(player.name)
                        Spacer()
                    }
                    .padding()
                }
            }
            
            Spacer()
            
            Button {
                playerStore.reduce(action: ReduxAction.addPlayer(name: "ShuZik", color: 0))
            } label: {
                Text("Update State")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ReduxView()
        .environmentObject(ReduxStore(playerState: ReduxState()))
}
