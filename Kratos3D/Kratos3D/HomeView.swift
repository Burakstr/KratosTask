//
//  HomeView.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewViewModel()
    init(){}
    var body: some View {
        
        NavigationView{
            VStack{
                if let user = viewModel.user {
                    profile(user: user)
                } else{
                    Text("Loading...")
                }
                // Logout
                KratosButton(title:"Çıkış Yap", action: {
                    viewModel.logout()
                }, color: .yellow)
                .padding(.top,300)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .ignoresSafeArea()
        .background(.black)
        }
        
        
        .onAppear{
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user:User) -> some View{
        VStack(){
            HStack{
                Text(user.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.yellow)
                Text(user.surname)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.yellow)
            }
        }
        .padding(.top,200)
    }
}

#Preview {
    HomeView()
}
