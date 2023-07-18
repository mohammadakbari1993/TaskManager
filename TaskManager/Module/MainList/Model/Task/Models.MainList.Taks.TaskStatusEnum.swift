//
//  Models.MainList.Taks.TaskStatusEnum.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Models.MainList.Task {
    
    enum TaskStatusEnum : CaseIterable {
        
        case complete
        case inProgress
        case toDo
        
        var statusEmoji : String {
            switch self {
            case .complete :
                return "✅"
            case .inProgress :
                return "📝"
            case .toDo :
                return "🔖"
            }
        }
        
        var statusTitle : String {
            switch self {
            case .complete :
                return "Complete"
            case .inProgress :
                return "In Progress"
            case .toDo :
                return "To Do"
            }
        }
        
    }
    
}
