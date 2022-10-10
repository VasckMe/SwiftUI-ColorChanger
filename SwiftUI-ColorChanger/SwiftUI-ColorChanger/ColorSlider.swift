//
//  ColorSlider.swift
//  SwiftUI-ColorChanger
//
//  Created by Apple Macbook Pro 13 on 9.10.22.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    
    var textColor: Color
    
    var body: some View {
        ZStack {
            HStack {
                Text("\(lround(value))").foregroundColor(textColor)
                Slider(value: $value, in: 0...255, step: 1)
                    .accentColor(textColor)
            }
            .padding()
        }
    }
}

//struct ColorSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorSlider()
//    }
//}
