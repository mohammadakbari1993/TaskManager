//
//  Views.MainList.ListRow.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI
extension Views.MainList {
    struct ListRow: View {
        @Binding var userTask : Models.MainList.Task
        var body: some View {
            HStack {
                Text(userTask.status.statusEmoji)
                Text(userTask.title)
                Spacer()
                
                Menu {
                    ForEach(Models.MainList.Task.TaskStatusEnum.allCases, id : \.self) { item in
                        Button(item.statusEmoji  + " " + item.statusTitle) {
                            self.userTask.status = item
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
            Views.MainList.ListRow(userTask: .constant(.sample3))
        }
        .previewLayout(.sizeThatFits)
    }
}
