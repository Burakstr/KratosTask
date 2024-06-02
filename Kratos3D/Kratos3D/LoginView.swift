//
//  ContentView.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                //BackGround
                BackGround()
                //Form
                VStack(){
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                            .font(.largeTitle)
                            .background(.white)
                            .cornerRadius(8)
                    }
                    TextField("Email Address", text:$viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(20)
                        .background(Color(Color.gray))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    SecureField("Password", text:$viewModel.password)
                        .font(.subheadline)
                        .padding(20)
                        .background(Color(.gray))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    HStack{
                        Button{} label: {
                            Text("Forgot password ?")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.top,5)
                                .foregroundStyle(.yellow)
                        }
                        .frame(maxWidth:.infinity,alignment: .trailing)
                        .padding(.trailing,24)
                    }
                    //Button
                    KratosButton(title: "Login Now", action: {
                        viewModel.login()
                    }, color: .yellow)
                    //Footer
                    HStack{
                        Text("Don't have an account?")
                            .foregroundStyle(.gray)
                        NavigationLink("Create One",destination: RegisterView())
                            .foregroundStyle(.yellow)
                            .font(.headline)
                    }
                }
                .padding(.top,400)
                
            }
        }
    }
}

#Preview {
    LoginView()
}
