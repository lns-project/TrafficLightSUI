//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Динара Шарафутдинова on 08.10.2023.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                ColorCircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )

                Spacer()
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }

    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
