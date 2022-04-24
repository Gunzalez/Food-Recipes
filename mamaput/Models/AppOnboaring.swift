//
//  AppOnboaring.swift
//  mamaput
//
//  Created by Ségun Konibire on 24/04/2022.
//

import Foundation

struct AppOnboaring: Identifiable {
    let id = UUID().uuidString
    var title: String
    var detail: String
    var animationName: String
}

extension AppOnboaring {
    static var data: [AppOnboaring] {
        [
            AppOnboaring(title: "Welcome", detail: "Pick a meal, cook a meal", animationName: "animation1"),
            AppOnboaring(title: "Welcome", detail: "Pick a meal, cook a meal", animationName: "animation2"),
            AppOnboaring(title: "Welcome", detail: "Pick a meal, cook a meal", animationName: "animation3"),
            AppOnboaring(title: "Welcome", detail: "Pick a meal, cook a meal", animationName: "animation4"),
        ]
    }
}
