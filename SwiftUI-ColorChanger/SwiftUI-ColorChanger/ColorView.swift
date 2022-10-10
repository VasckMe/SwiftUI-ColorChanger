//
//  SwiftUIView.swift
//  SwiftUI-ColorChanger
//
//  Created by Apple Macbook Pro 13 on 9.10.22.
//

import SwiftUI

struct ColorView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height:  150)
                .foregroundColor(Color(red: red, green: green, blue: blue))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3).foregroundColor(.white))
                .shadow(color: .black.opacity(1), radius: 8, x: 5, y: 5)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0.1, green: 0.98, blue: 0.4)
    }
}
