//
//  ColorCircleView.swift
//  TrafficLightSUI
//
//  Created by Динара Шарафутдинова on 08.10.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double

    var body: some View {
        Circle()
            .frame(width: 150)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.3)
    }
}
