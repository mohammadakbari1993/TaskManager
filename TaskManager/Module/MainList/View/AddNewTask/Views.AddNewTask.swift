//
//  Views.AddNewTask.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Views {
    struct AddNewTask : View {
        @State var titleInputText : String = ""
        var body: some View {
            VStack {
                
                ScrollView {
                    
                    Common.Views.InputBox.SimpleInput(title: "Title *",
                                                      placeHolder: "Please insert the title of the task",
                                                      inputText: $titleInputText).padding(.bottom)
                    
                    Common.Views.InputBox.SimpleInput(title: "Description *",
                                                      placeHolder: "Please insert the description of the task",
                                                      inputText: $titleInputText)
                    
                }
                .padding(16)
                
                Spacer()
                
                Common.Views.Button.SimpleButton(title: "Save".uppercased()) {
                    print("The button was tapped.")
                }
                .padding(.horizontal)
            }
            .navigationTitle("Add a new task")
        }
    }
}

struct AddNewTask_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            Views.AddNewTask(titleInputText: "")
        }
    }
}

