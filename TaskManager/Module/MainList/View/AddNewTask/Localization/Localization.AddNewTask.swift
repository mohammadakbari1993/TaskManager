//
//  Localization.AddNewTask.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/28/1402 AP.
//

import Foundation

extension Localization {
    enum AddNewTask : String {
        
        case pageTitle = "Add a new task"
        
        enum Button : String {
            case save = "SAVE"
        }
        
        enum Inputs  {
            
            enum Title : String {
                case title = "Title *"
                case placeHolder = "Please insert the title of the task"
                
            }
            
            enum Description : String {
                case title = "Description *"
                case placeHolder = "Please insert the description of the task"
                
            }
            
        }
        
    }
}
