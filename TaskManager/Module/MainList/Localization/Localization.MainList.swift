//
//  Localization.MainList.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/28/1402 AP.
//

import Foundation

extension Localization {
    enum MainList : String {
        
        case pageTitle = "Task Manager"
        
        enum TaskStatus : String {
            case complete = "Completed"
            case todo = "To do"
            case inProgress = "In Progress"
            case all = "All"
        }
        
        enum Errors : String {
            
            case invalidTitle = "Invalid title"
            case invalidDescription = "Invalid Description"
            case invalidTitleMessage = "You need to insert a title for your task."
            case invalidDescriptionMesage = "You need to insert a description for your task."
            
        }
        
    }
}
