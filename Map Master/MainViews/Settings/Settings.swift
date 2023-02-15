//
//  Settings.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct Settings: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(GlobalUserData: userData())
    }
}
