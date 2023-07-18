//
//  View.MainList.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Views {
    struct MainList : View {
      
        @State var list : [Models.MainList.Task] = [.sample,
                                                    .sample2,
                                                    .sample3,
                                                    .sample4,
                                                    .sample5]
        var body: some View {
            List {
                ForEach($list) { item in
                    Views.MainList.ListRow(userTask: item)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Task Manager")
            .navigationBarItems(leading: Button(action: {
                //TODO: Handle Your action
            }, label: {
                Menu {
                    Button("All") {
                        //TODO: Handle The action of the button
                    }
                    ForEach(Models.MainList.Task.TaskStatusEnum.allCases, id : \.self) { item in
                        Button(item.statusTitle) {
                            print(item.statusTitle)
                        }
                    }
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
            }), trailing: NavigationLink(destination: Views.AddNewTask()) {
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

