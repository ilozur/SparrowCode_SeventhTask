//
//  CollapsedView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct CollapsedView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.blue)
                .frame(width: 80, height: 50)
                .padding(10)
            Text("Open")
                .foregroundStyle(.white).bold()
        }
    }
}

#Preview {
    CollapsedView()
}
