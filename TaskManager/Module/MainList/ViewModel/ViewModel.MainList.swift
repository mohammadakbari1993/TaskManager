//
//  ViewModel.MainList.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/28/1402 AP.
//

import Foundation

extension ViewModels {
    
    class MainList : Base.ViewModel<[Models.MainList.Task]> {
        
        
        var filterItem : Models.MainList.Task.TaskStatusEnum? {
            didSet {
                guard let status = filterItem else {return}
                filterModeIsActive = true
                self.filteredItems = self.items?.filter({$0.status == status})
            }
        }
        

        override func loadDataAutomatically() {
            self.getData()
        }
        
        private func getData() {
            self.items = [.sample1,
                          .sample2,
                          .sample3,
                          .sample4,
                          .sample5]
        }
        
        
        func deleteItem(indexSet : IndexSet) {
            if filterModeIsActive {
                self.filteredItems?.remove(atOffsets: indexSet)
            } else {
                self.items?.remove(atOffsets: indexSet)
            }
        }
        
        func moveItem(from : IndexSet, to : Int) {
            if filterModeIsActive {
                self.filteredItems?.move(fromOffsets: from, toOffset: to)
            } else {
                self.items?.move(fromOffsets: from, toOffset: to)
            }
        }
        
        func updateItem(task : Models.MainList.Task) {
            guard let index = self.items?.firstIndex(where: {$0.id == task.id}) else {return}
            self.items?[index] = task
        }
        
        func addItem(title : String, description : String) -> Bool {
            
            guard !title.isEmpty else {
                self.alertTitle = Localization.MainList.Errors.invalidTitle.rawValue
                self.alertDescription = Localization.MainList.Errors.invalidTitleMessage.rawValue
                self.showAlert.toggle()
                return false
            }
            
            guard !description.isEmpty else {
                self.alertTitle = Localization.MainList.Errors.invalidDescription.rawValue
                self.alertDescription = Localization.MainList.Errors.invalidDescriptionMesage.rawValue
                self.showAlert.toggle()
                return false
            }
       
            let task = Models.MainList.Task(title: title, description: description, status: .toDo)
            self.items?.append(task)
            return true
  
        }
        
    }
    
}
