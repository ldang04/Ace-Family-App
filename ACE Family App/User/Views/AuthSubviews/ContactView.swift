//
//  ContactView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct ContactView: View {
    @Binding var current: Int

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContactView(current: .constant(4))
}
