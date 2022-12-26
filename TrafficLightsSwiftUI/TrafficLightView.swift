//
//  ColorCircleView.swift
//  TrafficLigthsSwiftUI
//
//  Created by Anton Vassel on 27.12.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white ,lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red, opacity: 1)
    }
}
