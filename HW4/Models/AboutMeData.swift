//
//  AboutMeData.swift
//  HW4
//
//  Created by Михаил Милюша on 31.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

struct AboutMeData {
    let text: String
}

extension AboutMeData {
    static func getAboutMeData() -> AboutMeData {
        return AboutMeData(text: "I study Swift on the swiftbook platform")
    }
}
