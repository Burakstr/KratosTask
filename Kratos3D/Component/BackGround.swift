//
//  HeaderView.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct BackGround: View {
    var body: some View {
        Image("Background")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
        Image("Logo")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .padding(.bottom, 550)
    }
}
