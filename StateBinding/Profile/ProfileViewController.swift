//
//  ProfileViewController.swift
//  StateBinding
//
//  Created by Johnny Freire on 26/11/25.
//

import Foundation
internal import Combine


class ProfileViewController: ObservableObject {
    @Published var name: String
    @Published var age: Int
    @Published var newName: String = ""
    
    init(name: String, age: Int, newName: String = "") {
        self.name = name
        self.age = age
        self.newName = newName
    }
    
    
    func changeName() {
        self.name = self.newName
        self.newName = ""
    }
    func validateNewName()->Bool{
        return self.newName.isEmpty
    }
}
