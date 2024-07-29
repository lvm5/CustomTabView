//
//  ContentView.swift
//  CustomTabView
//
//  Created by Leandro Morais on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    @State  var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            
            ZStack {
                
                if self.index == 0 {
                    Color.purple.opacity(0.7)
                        .ignoresSafeArea()
                }
                else if self.index == 1 {
                    Color.red.opacity(0.7)
                        .ignoresSafeArea()
                }
                else if self.index == 2 {
                    Color.black.opacity(0.5)
                        .ignoresSafeArea()
                }
                else if self.index == 3 {
                    Color.yellow.opacity(0.7)
                        .ignoresSafeArea()
                }
                else if self.index == 4 {
                    Color.blue.opacity(0.7)
                        .ignoresSafeArea()
                }
                else {
                    Color.black
                }
            }
            .padding(.bottom, -35)
            CustomTabs(index: self.$index)
        }
    }
}





// PREVIEW - CANVAS
#Preview {
    ContentView()
}
