//
//  ExpandedView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct ExpandedView: View {
    @Binding var isExpanded: Bool
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isExpanded.toggle()
            }
        }, label: {
            HStack {
                Image(systemName: "arrowshape.backward.fill")
                    .foregroundStyle(.white)
                Text("Back")
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
            }
            .padding()
        })
        .opacity(isExpanded ? 1 : 0)
    }
}
