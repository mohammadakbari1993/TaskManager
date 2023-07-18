//
//  Common.Views.InputBox.SimpleInpu.swift
//  TaskManager
//
//  Created by Mohammad Akbari on 4/27/1402 AP.
//

import SwiftUI
extension Common.Views.InputBox {
    
    struct SimpleInput: View {
        var title : String
        var placeHolder : String
        @Binding var inputText : String
        var body: some View {
            VStack {
                HStack{
                    Text(title)
                        .font(.footnote)
                    Spacer()
                }
                TextField(placeHolder, text: $inputText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
        }
    }
    
}

struct Common_Views_InputBox_SimpleInput_Previews: PreviewProvider {
    static var previews: some View {
        Common.Views.InputBox.SimpleInput(title: "Title", placeHolder : "Please insert your title ...", inputText: .constant(""))
    }
}
