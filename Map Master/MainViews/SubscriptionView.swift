//
//  SubscriptionView.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI

struct SubscriptionView: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView(GlobalUserData: userData())
    }
}
