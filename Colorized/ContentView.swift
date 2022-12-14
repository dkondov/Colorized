//
//  ContentView.swift
//  Colorized
//
//  Created by D KONDROV on 13.09.2022.
//

import SwiftUI

struct ContentView: View {
        
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
        
    var body: some View {
    
        VStack {
            ScreenColorView(redValue: redValue,
                            greenValue: greenValue,
                            blueValue: blueValue)
            
            VStack {
            SliderColorView(value: $redValue, Color: .red)
            SliderColorView(value: $greenValue, Color: .green)
            SliderColorView(value: $blueValue, Color: .blue)
            }
            .frame(height: 150)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.myColor)
   }
}

struct CustomColor {
    static let myColor = Color("mycolor")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

