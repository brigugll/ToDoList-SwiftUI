//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Luke Briguglio on 2/26/23.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift", "Build Apps","Change the Wolrd","Bring the Awesome", "Take a Vacation"]
    var body: some View {
        NavigationStack{
            List {
                ForEach(toDos, id: \.self) {
                    toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                }

            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}