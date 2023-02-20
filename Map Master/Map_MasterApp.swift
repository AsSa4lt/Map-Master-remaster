//
//  Map_MasterApp.swift
//  Map Master
//
//  Created by Rostyslav on 31.01.2023.
//

import SwiftUI
import RevenueCat

@main
struct Map_MasterApp: App {
    init() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "appl_MLcELEtzPuDLWJVeJdvcyTzOdYj")
        Purchases.shared.restorePurchases { customerInfo, error in
            //... check customerInfo to see if entitlement is now active
            userData().is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
        }
    }
    var body: some Scene {
        WindowGroup {
            if userData().is_logged == false{
                LoginPage(GlobalUserData: userData())
            }else{
                MainConnector(GlobalUserData: userData())
            }
        }
    }
}
