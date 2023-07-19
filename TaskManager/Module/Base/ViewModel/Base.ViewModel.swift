//
//  Base.ViewModel.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/28/1402 AP.
//

import SwiftUI


extension Base {
    
    class ViewModel<T:Decodable> : ObservableObject {
        
        @Published var items : T?
        @Published var filteredItems : T?
        @Published var filterModeIsActive : Bool = false
        
        //Alert Variables
        var alertTitle : String?
        var alertDescription : String?
        @Published var showAlert : Bool = false
        
        init() {
            loadDataAutomatically()
        }
        
        open func loadDataAutomatically() {
            // You need to override if you want automatic requests
        }
        
        open func getAlert() -> Alert {
            return Alert(title: Text(alertTitle ?? ""), message: Text(alertDescription ?? ""))
        }
        
    }
    
}
