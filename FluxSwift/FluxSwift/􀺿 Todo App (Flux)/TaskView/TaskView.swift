//
//  TaskView.swift
//  FluxSwift
//
//  Created by ShuZik on 28.03.2024.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject private var playerDispatcher: ToDoDispatcher
    @Environment(\.dismiss) var dismiss

    var body: some View {
        List {
            TextField("Name", text: .constant(""))
            DatePicker("Choose a date", selection: .constant(.now))
            Toggle("Omportant ?", isOn: .constant(false))
            
            Button("Create") {
                dismiss()
            }
        }
    }
}

#Preview {
    TaskView()
}

