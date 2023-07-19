//
//  Views.MainList.ListRow.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI
extension Views.MainList {
    struct ListRow: View {
        @EnvironmentObject var listViewModel : ViewModels.MainList
        @State var userTask : Models.MainList.Task
        var body: some View {
        
                HStack {
                    
                    VStack{
                       
                        HStack {
                            Text(userTask.status.statusEmoji)
                            Text(userTask.title)
                                .font(.headline)
                            Text("(\(userTask.status.statusTitle))")
                                .font(.footnote)
                            Spacer()
                        }
                        
                        HStack {
                            Text(userTask.description)
                                .font(.footnote)
                            Spacer()
                        }
                        .padding([.top, .leading], 4)
                    }
                    
                    Menu {
                        ForEach(Models.MainList.Task.TaskStatusEnum.allCases, id : \.self) { item in
                            Button(item.statusEmoji  + " " + item.statusTitle) {
                                self.userTask.status = item
                                self.listViewModel.updateItem(task: self.userTask)
                            }
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
 
     
        }
    }
}
struct MainList_ListRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Views.MainList.ListRow(userTask: .sample3)
        }
        .previewLayout(.sizeThatFits)
        .environmentObject(ViewModels.MainList())
    }
}
