//
//  Whats_NewApp.swift
//  Whats New
//
//  Created by Kovs on 31.08.2022.
//

import SwiftUI

@main
struct Whats_NewApp: App {
    var body: some Scene {
        WindowGroup {
            let userData = UserData()
            WhatsNew(featureObject: userData.features[0])
        }
    }
}
