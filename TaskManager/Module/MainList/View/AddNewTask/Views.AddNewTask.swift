//
//  Views.AddNewTask.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Views {
    struct AddNewTask : View {
        @Environment(\.presentationMode) var presentationMode
        @EnvironmentObject var listViewModel : ViewModels.MainList
        
        @State var titleInputText : String = ""
        @State var descriptionInputText : String = ""
        
        var body: some View {
            VStack {
                ScrollView {
                    
                    Common.Views.InputBox.SimpleInput(title: Localization.AddNewTask.Inputs.Title.title.rawValue,
                                                      placeHolder: Localization.AddNewTask.Inputs.Title.placeHolder.rawValue,
                                                      inputText: $titleInputText).padding(.bottom)
                    
                    Common.Views.InputBox.SimpleInput(title: Localization.AddNewTask.Inputs.Description.title.rawValue,
                                                      placeHolder: Localization.AddNewTask.Inputs.Description.placeHolder.rawValue,
                                                      inputText: $descriptionInputText)
                    
                }
                .padding(16)
                
                Spacer()
                
                Common.Views.Button.SimpleButton(title: Localization.AddNewTask.Button.save.rawValue.uppercased(),action: addNewItem)
                .padding(.horizontal)
            }
            .navigationTitle(Localization.AddNewTask.pageTitle.rawValue)
            .alert(isPresented: self.$listViewModel.showAlert, content: self.listViewModel.getAlert)

        }
        
        private func addNewItem() {
            if self.listViewModel.addItem(title: self.titleInputText, description: self.descriptionInputText) {
                presentationMode.wrappedValue.dismiss()
            }
        }
        
    }
}

struct AddNewTask_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            Views.AddNewTask(titleInputText: "")
        }
        .environmentObject(ViewModels.MainList())
    }
}

