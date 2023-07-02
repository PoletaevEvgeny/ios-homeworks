//
//  User.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 02.07.2023.
//

import UIKit

class User {
    var login: String
    var fullName: String
    var avatar: UIImage
    var status: String
    
    init(login: String, fullName: String, avatar: UIImage, status: String) {
        self.login = login
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

// Протокол UserService
protocol UserService {
    func getUser(byLogin login: String) -> User?
}

// Класс CurrentUserService, поддерживающий протокол UserService
class CurrentUserService: UserService {
    var currentUser: User
    
    init(currentUser: User) {
        self.currentUser = currentUser
    }
    
    func getUser(byLogin login: String) -> User? {
        guard login == currentUser.login else {
            return nil
        }
        return currentUser
    }
}

// Класс TestUserService, поддерживающий протокол UserService
class TestUserService: UserService {
    static let testUser = User(login: "test_login", fullName: "Test User", avatar: UIImage(named: "logo")!, status: "Test status")
    
    func getUser(byLogin login: String) -> User? {
        guard login == TestUserService.testUser.login else {
            return nil
        }
        return TestUserService.testUser
    }
}
