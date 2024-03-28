//
//  ArchitectureSelectionView.swift
//  FluxSwift
//
//  Created by ShuZik on 24.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ToDoView().environmentObject(FluxDispatcher())) {
                    Text("Launch ToDo App")
                }
                
                NavigationLink(destination: FluxView().environmentObject(FluxDispatcher())) {
                    Text("Flux Architecture")
                }
                
                NavigationLink(destination: ReduxView().environmentObject(ReduxStore(playerState: ReduxState()))) {
                    Text("Redux Architecture")
                }
            }
            .navigationTitle("Select Architecture")
        }
    }
}
