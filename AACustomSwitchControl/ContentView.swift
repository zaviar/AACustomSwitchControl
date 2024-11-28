//
//  ContentView.swift
//  AACustomSwitchControl
//
//  Created by Arsalan Malik on 28/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isOnGradient: Bool = false
    @State private var isOnCircular: Bool = true
    @State private var isOnFlat: Bool = false

    var body: some View {
        VStack(spacing: 40) {
                  // Gradient Style - Horizontal Layout
                  AACustomSwitchControl(
                      labelText: "Gradient Style",
                      isOn: $isOnGradient,
                      layout: .horizontal,
                      style: .gradient
                  )

                  // Circular Style - Vertical Layout
            AACustomSwitchControl(
                      labelText: "Circular Style",
                      isOn: $isOnCircular,
                      switchTint: .purple, layout: .vertical,
                      style: .circular
                  )

                  // Flat Style - Horizontal Layout
            AACustomSwitchControl(
                      labelText: "Flat Style",
                      isOn: $isOnFlat,
                      switchTint: .red, layout: .horizontal,
                      style: .flat,
                      animation: .easeInOut(duration: 0.3)
                  )
              }
              .padding()
    }
}

#Preview {
    ContentView()
}
