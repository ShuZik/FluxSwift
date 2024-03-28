//
//  ToDoView.swift
//  FluxSwift
//
//  Created by ShuZik on 23.03.2024.
//

import SwiftUI

struct ToDoView: View {
    @EnvironmentObject private var playerDispatcher: ToDoDispatcher

    @State private var showCreate = false
    
    var body: some View {
        CircularButton("plus") {
            showCreate.toggle()
        }
        .sheet(isPresented: $showCreate, content: {
            NavigationStack {
                TaskView()
            }
            .presentationDetents([.medium])
        })
    }

}

#Preview {
    ToDoView()
        .environmentObject(ToDoDispatcher())
}
