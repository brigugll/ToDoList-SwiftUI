//
//  DetailView.swift
//  ToDoList
//
//  Created by Luke Briguglio on 2/26/23.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var toDO = ""
    @State private var reminderIsOn = false
    @State private var dueDate = Date.now + (60*60*24)
    @State private var notes = ""
    @State private var isCompleted = false
    
    var passedValue: String
    
    var body: some View {
        
        List {
            TextField("Enter To Do here", text: $toDO)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .listRowSeparator(.hidden)
            
            Toggle("Set Reminder", isOn: $reminderIsOn)
                .padding(.top)
                .listRowSeparator(.hidden)
            
            DatePicker("Date", selection: $dueDate)
                .listRowSeparator(.hidden)
                .padding(.bottom)
                .disabled(!reminderIsOn)
            
            Text("Notes")
                .padding(.top)
            TextField("Notes", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            
            Toggle("Completed", isOn: $isCompleted)
                .padding(.top)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement:.navigationBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement:.navigationBarTrailing) {
                Button("Save") {
                    //Todo: Add save code here
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.automatic)
        
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(passedValue: "Item 1")
        }
    }
}
