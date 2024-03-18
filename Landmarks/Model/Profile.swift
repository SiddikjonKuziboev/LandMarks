//
//  Profile.swift
//  Landmarks
//
//  Created by Siddikjon Kuziboev on 18/03/24.
//

import Foundation

struct Profile {
    var userName: String
    var prefersNotifications = true
    var seasonalPhoto = Season.spring
    var goalDate = Date()
    
    static let `default` = Profile(userName: "k_siddikjon")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
