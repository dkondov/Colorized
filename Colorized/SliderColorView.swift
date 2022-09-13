//
//  SliderView.swift
//  Colorized
//
//  Created by D KONDROV on 13.09.2022.
//

import SwiftUI

struct SliderColorView: View {
    
    @Binding var value: Double
    @State private var textField = ""
    
    let Color: Color
        
    var body: some View {
        
        HStack {
            Text("\(lround(value))").frame(width: 35)
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(Color)
                .onChange(of: value) { _ in
                    textField = "\(lround(value))"
                }
            
            SliderTextField(textField: $textField, value: $value)
        }
        .onAppear {
            textField = "\(lround(value))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView(value: .constant(0.0), Color: .red)
    }
}

