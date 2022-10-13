//
//  ColorSlider.swift
//  SwiftUI-ColorChanger
//
//  Created by Apple Macbook Pro 13 on 9.10.22.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    @State var textValue: String
    
    var textColor: Color
    
    var body: some View {
        ZStack {
            HStack {
                Text("\(lround(value))").foregroundColor(textColor)
                Slider(value: $value, in: 0...255, step: 1) {a in
                    changeValue(value: value, stringValue: nil)
                }
                    .accentColor(textColor)
                TextField("0...255", text: $textValue) {
                    changeValue(value: nil, stringValue: textValue)
                }
                .frame(width: 50, height: 40)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .black.opacity(1), radius: 8, x: 5, y: 5)
                .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
    
    private func changeValue(value: Double?, stringValue: String?) {
        if let val = value {
            textValue = String(val)
        } else if
            let stringVal = stringValue,
            let doubleVal = Double(stringVal),
            doubleVal >= 0 && doubleVal <= 255
        {
            self.value = doubleVal
        }
    }
}

//struct ColorSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorSlider()
//    }
//}
