//
//  UpdateToDoView.swift
//  FluxSwift
//
//  Created by ShuZik on 28.03.2024.
//

import SwiftUI
import SwiftData

struct UpdateTaskView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Bindable var item: ToDoItem
    
    var body: some View {
        List {
            TextField("Name", text: $item.title)
            DatePicker("Choose a date",
                       selection: $item.timestamp)
            Toggle("Important?", isOn: $item.isCritical)
            Button("Update") {
                dismiss()
            }
        }
        .navigationTitle("Update ToDo")
    }
}

//#Preview {
//    UpdateToDoView()
//}
