//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Luke Briguglio on 2/26/23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var toDosVM = ToDosViewModel()
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environmentObject(toDosVM)
        }
    }
}
