//
//  Map_MasterApp.swift
//  Map Master
//
//  Created by Rostyslav on 31.01.2023.
//

import SwiftUI

@main
struct Map_MasterApp: App {
    var body: some Scene {
        WindowGroup {
            MainConnector(GlobalUserData: userData())
        }
    }
}
