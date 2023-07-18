//
//  View.MainList.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI

extension Views {
    struct MainList : View {
        var body: some View {
            List {
                Views.MainList.ListRow(userTask: .constant(.sample))
                Views.MainList.ListRow(userTask: .constant(.sample4))
                Views.MainList.ListRow(userTask: .constant(.sample5))
                Views.MainList.ListRow(userTask: .constant(.sample2))
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Task Manager")
            .navigationBarItems(leading: Button(action: {
                //TODO: Handle Your action
            }, label: {
                Text("Filter")
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

