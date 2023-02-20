//
//  Settings.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI
import RevenueCat

struct Settings: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            LessonsBack()
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.onAppear{
                Purchases.shared.getCustomerInfo{ (customerInfo, error) in
                    GlobalUserData.is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(GlobalUserData: userData())
    }
}
