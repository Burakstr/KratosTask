//
//  MainView.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn,!viewModel.currentUserID.isEmpty{
            HomeView()
        } else{
            LoginView()
        }
    }
}
import SwiftUI

struct ContentView: View {
    @State private var isActive = false

    var body: some View {
        ZStack {
            if isActive {
                MainView()
            } else {
                GifReaderView()
                    .background(Color.black)
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    MainView()
}
