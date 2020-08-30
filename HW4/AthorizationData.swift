//
//  AthorizationData.swift
//  HW4
//
//  Created by Михаил Милюша on 30.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

struct AuthorizationData {
    let login: String
    let password: String
}

extension AuthorizationData {
    static func getAuthData() -> AuthorizationData {
        return AuthorizationData(login: "Misha", password: "1")
    }
}

