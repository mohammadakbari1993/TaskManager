//
//  Common.Views.Button.SimpleButton.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Common.Views.Button {
    
    struct SimpleButton : View {
        
        let title : String
        let action : () -> Void?
        
        var body: some View {
            
            Button {
                action()
            } label: {
                
                Text(title)
                    .foregroundColor(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                
                
            }
            
        }
        
    }
    
}
