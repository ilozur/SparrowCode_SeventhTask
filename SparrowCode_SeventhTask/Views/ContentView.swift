//
//  ContentView.swift
//  SparrowCode_SeventhTask
//
//  Created by Edmond Podlegaev on 19.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false
    
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    CollapsedView(isExpanded: $isExpanded)
                    ExpandedView(isExpanded: $isExpanded)
                }
                Spacer().frame(height:  isExpanded ? 400 : 0)
            }
            Spacer().frame(width: isExpanded ? 200 : 0)
        }
        .background(.blue)
        .cornerRadius(15)
        .position(x: isExpanded ? UIScreen.main.bounds.width / 2 : UIScreen.main.bounds.width - 75,
                  y: isExpanded ? UIScreen.main.bounds.height / 2 : UIScreen.main.bounds.height - 115)
    }
}

#Preview {
    ContentView()
}
