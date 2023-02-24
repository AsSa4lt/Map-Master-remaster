//
//  SwiftUIView.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Win_Loose_Back()){
                    Text("Loh")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                }
                Win_Loose_Back()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
