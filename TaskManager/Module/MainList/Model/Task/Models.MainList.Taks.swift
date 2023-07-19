//
//  Models.MainList.Taks.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import Foundation

extension Models.MainList {
    
    struct Task : Decodable ,Identifiable {
       
        var id : String = UUID().uuidString
        var title : String
        var description : String
        var status : Models.MainList.Task.TaskStatusEnum
        
        init(title: String, description: String, status: Models.MainList.Task.TaskStatusEnum) {
            self.title = title
            self.description = description
            self.status = status
        }
        
        static let sample1 = Models.MainList.Task(title: "Sample Task 1", description: "This is a short description for task 1", status: .toDo)
        static let sample2 = Models.MainList.Task(title: "Sample Task 2", description: "This is a short description for task 2", status: .inProgress)
        static let sample3 = Models.MainList.Task(title: "Sample Task 3", description: "This is a short description for task 3", status: .complete)
        static let sample4 = Models.MainList.Task(title: "Sample Task 4", description: "This is a short description for task 4", status: .complete)
        static let sample5 = Models.MainList.Task(title: "Sample Task 5", description: "This is a short description for task 5", status: .toDo)
        
    }
    
}
