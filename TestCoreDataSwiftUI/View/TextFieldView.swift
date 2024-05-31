//
//  TextFieldView.swift
//  TestCoreDataSwiftUI
//
//  Created by Sidney MALEO on 27/05/2024.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var field: String
    var value: String
    var type: UIKeyboardType
    
    var body: some View {
        TextField(value, text: $field)
            .keyboardType(type)
    }
}

#Preview {
    TextFieldView(field: .constant(""), value: "Mail", type: .emailAddress)
}
