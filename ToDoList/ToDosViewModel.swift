//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Luke Briguglio on 3/7/23.
//

import Foundation

class ToDosViewModel: ObservableObject{
    @Published var toDos: [ToDo] = []
    
    init() {
        //Temp data here
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change The World"))
    }
    
    func saveToDo(toDo: ToDo, newToDo: Bool) {
        if newToDo {
            toDos.append(toDo)
        } else {
            if let index = toDos.firstIndex(where: {$0.id == toDo.id}) {
                toDos[index] = toDo
            }
        }
    }
}
