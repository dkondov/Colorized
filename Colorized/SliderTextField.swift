//
//  SliderTextField.swift
//  Colorized
//
//  Created by D KONDROV on 13.09.2022.
//

import SwiftUI

struct SliderTextField: View {
    
    @Binding var textField: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        
        TextField("", text: $textField)
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
            .multilineTextAlignment(.trailing)
            .alert(isPresented: $showAlert){
                Alert(title: Text("Wrong format"), message: Text("Please enter values to 0 from 255"))
            }
    }
}

extension SliderTextField {
    
    private func checkValue(){
        if let value = Int(textField), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
    }
}

struct SliderTextField_Previews: PreviewProvider {
    static var previews: some View {
        SliderTextField(textField: .constant("128"), value: .constant(128.0))
    }
}
