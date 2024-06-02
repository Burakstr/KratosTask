//
//  RegisterView.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//

import SwiftUI

struct RegisterView: View {

    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        
        NavigationStack {
            VStack{
                //Form
                Text("Create Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.yellow)
                TextField("Name", text:$viewModel.name)
                    .autocorrectionDisabled()
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(Color.gray))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                TextField("Surname", text:$viewModel.surname)
                    .autocorrectionDisabled()
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(Color.gray))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                TextField("Email Address",text: $viewModel.email)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(Color.gray))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                SecureField("Password", text:$viewModel.password)
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(Color.gray))
                    .cornerRadius(10)
                    .padding(.horizontal,24)
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                        .font(.largeTitle)
                        .background(.white)
                        .cornerRadius(8)
                }
                //Button
                VStack(){
                    KratosButton(title: "Create Account", action: {
                        viewModel.register()
                    }, color: .yellow)
                    Button{} label: {
                        Text("Cancel")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(width:345 ,height: 50)
                            .foregroundColor(.black)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
                .padding(.top,180)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .ignoresSafeArea()
        .background(.black)
        }
    }
}

#Preview {
    RegisterView()
}
