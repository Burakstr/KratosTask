//
//  KratosButton.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct KratosButton: View {
    
    let title:String
    let action: () -> Void
    let color: Color
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .frame(width:345 ,height: 50)
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(10)
        })
    }
}

#Preview {
    KratosButton(title: "String", action:{},color: .yellow)
}
