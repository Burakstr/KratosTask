//
//  Kratos3DApp.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import FirebaseCore
import SwiftUI

@main
struct Kratos3DApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
