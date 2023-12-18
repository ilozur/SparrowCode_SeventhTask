//
//  ContentView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var state: Bool = false
    var body: some View {
        if state {
            ExpandedView().onTapGesture {
                withAnimation(.easeInOut(duration: 0.25)) {
                    state.toggle()
                }
            }
        } else {
            CollapsedView().onTapGesture {
                withAnimation(.easeInOut(duration: 0.25)) {
                    state.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
