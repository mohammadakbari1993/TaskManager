//
//  View.MainList.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Views {
    struct MainList : View {
      
        @StateObject var viewModel : ViewModels.MainList = ViewModels.MainList()
        
        var body: some View {
            List {
                ForEach(viewModel.filterModeIsActive ? viewModel.filteredItems ?? [] : viewModel.items ?? []) { item in
                    Views.MainList.ListRow(userTask: item).environmentObject(viewModel)
                }
                .onDelete(perform: viewModel.deleteItem)
                .onMove(perform: viewModel.moveItem)
            }
            .listStyle(PlainListStyle())
            .navigationTitle(Localization.MainList.pageTitle.rawValue)
            .navigationBarItems(leading: Button(action: {
                //TODO: Handle Your action
            }, label: {
                HStack {
                    Menu {
                        Button(Localization.MainList.TaskStatus.all.rawValue) {
                            viewModel.filterModeIsActive = false
                        }
                        ForEach(Models.MainList.Task.TaskStatusEnum.allCases, id : \.self) { item in
                            Button(item.statusTitle) {
                                viewModel.filterItem = item
                            }
                        }
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    EditButton()
                }
            }), trailing: NavigationLink(destination: Views.AddNewTask().environmentObject(self.viewModel)) {
                Image(systemName: "plus.circle")
            })
        }
                
    }
}

struct MainList_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            Views.MainList()
        }
    }
}

