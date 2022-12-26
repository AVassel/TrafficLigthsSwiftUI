//
//  ChangeColorButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Anton Vassel on 27.12.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 65)
        .background(Color.blue)
        .cornerRadius(25)
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
