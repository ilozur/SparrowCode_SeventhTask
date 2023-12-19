//
//  CollapsedView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct CollapsedView: View {
    @Binding var state: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.blue)
                .frame(width: 80, height: 50)
                .padding(10)
            
            Text("Open")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.25)) {
                        state.toggle()
                    }
                }
        }
    }
}
