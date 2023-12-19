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
        ZStack {
            if state {
                ExpandedView(state: $state)
            } else {
                CollapsedView(state: $state)
            }
        }
        .position(x: state ? UIScreen.main.bounds.width / 2 : UIScreen.main.bounds.width - 75,
                  y: state ? UIScreen.main.bounds.height / 2 : UIScreen.main.bounds.height - 125)
    }
}

#Preview {
    ContentView()
}
