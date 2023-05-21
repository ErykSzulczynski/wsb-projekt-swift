//
//  CheckBoxView.swift
//  TodoListApp
//
//  Created by Eryk Szułczyński on 30/02/1402 AP.
//

import SwiftUI

struct CheckBoxView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View {
        let isCompleted = passedTaskItem.isCompleted()
        
        Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
            .foregroundColor(isCompleted ? .green : .secondary)
            .onTapGesture {
                withAnimation {
                    toggleTaskCompletion()
                }
            }
    }
    
    private func toggleTaskCompletion() {
        passedTaskItem.completedDate = passedTaskItem.isCompleted() ? nil : Date()
        dateHolder.saveContext(viewContext)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView(passedTaskItem: TaskItem())
    }
}

