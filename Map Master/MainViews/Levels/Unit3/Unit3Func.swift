//
//  Unit3Func.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit3(GlobalUserData: userData) -> some View{
        VStack{
            Text("Unit 3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                    NavigationLink(destination: Unit3Lesson1(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Moldova", active: GlobalUserData.unit3[0], text_level: "Flags 7")
                    }
                    NavigationLink(destination: Unit3Lesson2(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Mongolia", active: GlobalUserData.unit3[1], text_level: "Flags 8")
                    }
                    NavigationLink(destination: Unit3Lesson3(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Oman", active: GlobalUserData.unit3[2], text_level: "Flags 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson4(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Burundi", active: GlobalUserData.unit3[3], text_level: "Borders 4")
                    }
                    NavigationLink(destination: Unit3Lesson5(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Chile", active: GlobalUserData.unit3[4], text_level: "Borders 5")
                    }
                    NavigationLink(destination: Unit2Lesson6(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Bangladesh", active: GlobalUserData.unit3[5], text_level: "Borders 6")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson7(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Singapore", active: GlobalUserData.unit3[6], text_level: "Capitals 7")
                    }
                    NavigationLink(destination: Unit3Lesson8(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "China", active: GlobalUserData.unit3[7], text_level: "Capitals 8")
                    }
                    NavigationLink(destination: Unit2Lesson9(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Angola", active: GlobalUserData.unit3[8], text_level: "Capitals 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: Unit3Lesson10(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "New Zealand", active: GlobalUserData.unit3[9], text_level: "People 4")
                    }
                    NavigationLink(destination: Unit3Lesson11(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Peru", active: GlobalUserData.unit3[10], text_level: "People 5")
                    }
                    NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Jamaica", active: GlobalUserData.unit3[11], text_level: "People 6")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson13(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Thailand", active: GlobalUserData.unit3[12], text_level: "GPD 1")
                    }
                    NavigationLink(destination: Unit3Lesson14(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Jordan", active: GlobalUserData.unit3[13], text_level: "GPD 2")
                    }
                    NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Western Sahara", active: GlobalUserData.unit3[14], text_level: "GPD 3")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
