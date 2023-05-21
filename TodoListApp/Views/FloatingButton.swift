//
//  FloatingButton.swift
//  TodoListApp
//
//  Created by Eryk Szułczyński on 30/02/1402 AP.
//

import SwiftUI

struct FloatingButton: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        Spacer()
        NavigationLink(
            destination: TaskEditView(passedTaskItem: nil, initialDate: Date())
                .environmentObject(dateHolder)
        ) {
            Text("Dodaj zadanie")
                .font(.headline)
                .textCase(.uppercase)
                .frame(maxWidth: .infinity)
                .padding(15)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(5)
                .padding(.horizontal, 30)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
        }
        .frame(maxWidth: .infinity * 0.7)
    }
}


struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}

