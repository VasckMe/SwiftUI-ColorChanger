//
//  ContentView.swift
//  SwiftUI-ColorChanger
//
//  Created by Apple Macbook Pro 13 on 9.10.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 100.0
    @State private var green: Double = 140.0
    @State private var blue: Double = 40.0
    
    @State private var savedRed: Double = 100.0
    @State private var savedGreen: Double = 140.0
    @State private var savedBlue: Double = 40.0
    
    func saveColor() {
        savedRed = red / 255
        savedGreen = green / 255
        savedBlue = blue / 255
    }
    
    var body: some View {
        ZStack {
            Color(.darkGray)
            VStack {
                ColorView(red: red/255, green: green/255, blue: blue/255)
                ColorView(red: savedRed, green: savedGreen, blue: savedBlue)
                ColorSlider(value: $red, textValue: String(red), textColor: .red)
                ColorSlider(value: $green, textValue: String(green), textColor: .green)
                ColorSlider(value: $blue, textValue: String(blue), textColor: .blue)
                
                Button(action: {
                    saveColor()
                }, label: {
                    Text("SAVE COLOR")
                })
            }
                .padding()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
