//
//  ScreenColorView.swift
//  Colorized
//
//  Created by D KONDROV on 13.09.2022.
//

import SwiftUI

struct ScreenColorView: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
   
    var body: some View {
        Rectangle()
            .frame(width: 400, height: 200)
            .cornerRadius(20)
            .foregroundColor(Color(red: redValue / 255,
                                   green: greenValue / 255,
                                   blue: blueValue / 255))
    }
}

struct ScreenColorView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenColorView(redValue: 0, greenValue: 0, blueValue: 0)
    }
}
