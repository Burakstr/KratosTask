//
//  MainViewViewModel.swift
//  Kratos3D
//
//  Created by Burak Satır on 1.06.2024.
//
import FirebaseAuth
import Foundation

class MainViewViewModel:ObservableObject{
    @Published var currentUserID: String = ""
    
    init(){
        Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserID = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
