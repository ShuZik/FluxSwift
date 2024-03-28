//
//  TaskView.swift
//  FluxSwift
//
//  Created by ShuZik on 28.03.2024.
//

import SwiftUI

struct CreateTaskView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    
    @State private var item = ToDoItem()
    
    var body: some View {
        List {
            TextField("Name", text: $item.title)
            DatePicker("Choose a date",
                       selection: $item.timestamp)
            Toggle("Important?", isOn: $item.isCritical)
            Button("Create") {
                withAnimation {
                    context.insert(item)
                }
                dismiss()
            }
        }
        .navigationTitle("Create ToDo")
    }
}
#Preview {
    CreateTaskView()
        .modelContainer(for: ToDoItem.self)
}
