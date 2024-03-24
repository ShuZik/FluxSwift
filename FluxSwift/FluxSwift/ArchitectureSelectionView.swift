//
//  ArchitectureSelectionView.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import SwiftUI

struct ArchitectureSelectionView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ReduxView().environmentObject(ReduxStore(playerState: ReduxState()))) {
                    Text("Player One Architecture")
                }
            }
            .navigationTitle("Select Architecture")
        }
    }
}
