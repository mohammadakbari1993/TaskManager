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
                Button {
                    print("Menu was tapped...")
                } label: {
                    Image(systemName: "ellipsis.circle")
                }

            }
        }
    }
}
struct MainList_ListRow_Previews: PreviewProvider {
    static var previews: some View {
        Views.MainList.ListRow(userTask: .constant(.sample3))
    }
}
