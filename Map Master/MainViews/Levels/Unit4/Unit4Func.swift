//
//  Unit4Func.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func Unit4(GlobalUserData: userData) -> some View{
        VStack{
            Text("Unit 4")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                    NavigationLink(destination: Unit4Lesson1(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Gibraltar", active: GlobalUserData.unit4[0], text_level: "Flags 10")
                    }
                    NavigationLink(destination: Unit4Lesson2(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Yemen", active: GlobalUserData.unit4[1], text_level: "Flags 11")
                    }
                    NavigationLink(destination: Unit4Lesson3(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Cuba", active: GlobalUserData.unit4[2], text_level: "Flags 12")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit4Lesson4(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Laos", active: GlobalUserData.unit4[3], text_level: "Maps 1")
                    }
                    NavigationLink(destination: Unit4Lesson5(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "San Marino", active: GlobalUserData.unit4[4], text_level: "Maps 2")
                    }

                    NavigationLink(destination: Unit4Lesson6(GlobalUserData: GlobalUserData)) {
                            RatingPanelActive(image: "Somalia", active: GlobalUserData.unit4[5], text_level: "Maps 3")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit4Lesson7(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Serbia", active: GlobalUserData.unit4[6], text_level: "Maps 4")
                    }
                    NavigationLink(destination: Unit4Lesson8(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Slovenia", active: GlobalUserData.unit4[7], text_level: "Maps 5")
                    }
                    NavigationLink(destination: Unit4Lesson9(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Albania", active: GlobalUserData.unit4[8], text_level: "Maps 6")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit4Lesson10(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "United States", active: GlobalUserData.unit4[9], text_level: "USA 1")
                    }

                    NavigationLink(destination: Unit4Lesson11(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "United States", active: GlobalUserData.unit4[10], text_level: "USA 2")
                    }
                    NavigationLink(destination: Unit4Lesson12(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "United States", active: GlobalUserData.unit4[11], text_level: "USA 3")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit4Lesson13(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Seychelles", active: GlobalUserData.unit4[12], text_level: "Capitals 10")
                    }
                    NavigationLink(destination: Unit4Lesson14(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Tanzania", active: GlobalUserData.unit4[13], text_level: "Capitals 11")
                    }
                    NavigationLink(destination: Unit4Lesson15(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Burkina Faso", active: GlobalUserData.unit4[14], text_level: "Capitals 12")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: Unit4Lesson16(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Faroes", active: GlobalUserData.unit4[15], text_level: "Borders 7")
                    }
                    NavigationLink(destination: Unit4Lesson17(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Mayotte", active: GlobalUserData.unit4[16], text_level: "Borders 8")
                    }
                    NavigationLink(destination: Unit4Lesson18(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Guadeloupe", active: GlobalUserData.unit4[17], text_level: "Borders 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)

}
