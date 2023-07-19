//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Views.MainList()
            }
        }
    }
}
