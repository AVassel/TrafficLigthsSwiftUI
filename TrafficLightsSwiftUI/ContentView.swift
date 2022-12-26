//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Anton Vassel on 26.12.2022.
//

import SwiftUI

enum CurrentLight {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightOff
            redLightState = lightOn
        case .yellow:
            currentLight = .green
            redLightState = lightOff
            yellowLightState = lightOn
        case .green:
            currentLight = .red
            yellowLightState = lightOff
            greenLightState = lightOn
        }
        
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightView(color: .red, opacity: redLightState)
                TrafficLightView(color: .yellow, opacity: yellowLightState)
                TrafficLightView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
