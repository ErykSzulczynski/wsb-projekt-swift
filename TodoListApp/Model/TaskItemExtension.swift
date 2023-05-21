//
//  TaskItemExtension.swift
//  TodoListApp
//
//  Created by Eryk Szułczyński on 30/02/1402 AP.
//

import SwiftUI
extension TaskItem {
    func isCompleted() -> Bool {
        return completedDate != nil
    }
}
