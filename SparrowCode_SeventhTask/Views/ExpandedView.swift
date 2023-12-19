//
//  ExpandedView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct ExpandedView: View {
    @Binding var state: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
                .frame(width: 325, height: 400)
            
            Text("\(Image(systemName: "arrowshape.backward.fill")) Back")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
                .padding(20)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.25)) {
                        state.toggle()
                    }
                }
        }
    }
}
