//
//  ButtonView.swift
//  TrafficLightSUI
//
//  Created by Динара Шарафутдинова on 08.10.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 200, height: 60)
        .background(Color(.systemBlue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
