//
//  LessonsView.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI

struct LessonsView: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        NavigationView{
            ZStack{
                LessonsBack()
                VStack{
                    HStack{
                        Text("56").font(.title).foregroundColor(.yellow)
                        Image(systemName: "microbe.fill").foregroundColor(.yellow)
                        Spacer()
                        Text("\(GlobalUserData.hearts)").font(.title).foregroundColor(.red)
                        Image(systemName: "heart.fill").foregroundColor(.red)
                    }.frame(width: UIScreen.main.bounds.width*0.9)
                    ScrollView(showsIndicators: false){
                        Unit1(GlobalUserData: GlobalUserData)
                        Unit2(GlobalUserData: GlobalUserData)
                        Unit3(GlobalUserData: GlobalUserData)
                        Unit4(GlobalUserData: GlobalUserData)
                    }.mask(
                        VStack(spacing: 0) {

                            // Top gradient
                            LinearGradient(gradient:
                               Gradient(
                                   colors: [Color.black.opacity(0), Color.black]),
                                   startPoint: .top, endPoint: .bottom
                               )
                               .frame(height: 10)

                            // Middle
                            Rectangle().fill(Color.black)

                            // Bottom gradient

                        }
                     )
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle()).accentColor(.white)
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView(GlobalUserData: userData())
    }
}
