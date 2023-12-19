//
//  CollapsedView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct CollapsedView: View {
    @Binding var isExpanded: Bool
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isExpanded.toggle()
            }
        }, label: {
            Text("Open")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
        })
        .opacity(isExpanded ? 0 : 1)
    }
}
