//
//  LessonsView.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI

struct LessonsView: View {
    @StateObject var GlobalUserData: userData
    @State var result: Int = 0
    @State var showAnimation: Bool = false

    var body: some View {
            ZStack{
                LessonsBack()
                VStack{
                    HStack{
                        Text("\(result)").font(.title).fontWeight(.heavy).foregroundColor(.yellow)
                        Image(systemName: "microbe.fill").resizable().frame(width: 25, height: 25).foregroundColor(.yellow)
                        Spacer()
                        Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                        Image(systemName: "heart.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905)).scaleEffect(showAnimation ? 1.4 : 1.0)
                            .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true))
                                .onAppear {
                                    showAnimation = true
                                }
                    }.frame(width: UIScreen.main.bounds.width*0.9).onAppear{
                        if GlobalUserData.hearts == 0{
                            showAnimation = true
                        }else{
                            showAnimation = false
                        }
                    }
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
                    ).onAppear{
                        result = 0
                        for i in 0..<GlobalUserData.unit1.count{
                            if GlobalUserData.unit1[i] == true{
                                result += 1
                            }
                        }
                        for i in 0..<GlobalUserData.unit2.count{
                            if GlobalUserData.unit2[i] == true{
                                result += 1
                            }
                        }
                        for i in 0..<GlobalUserData.unit3.count{
                            if GlobalUserData.unit3[i] == true{
                                result += 1
                            }
                        }
                        for i in 0..<GlobalUserData.unit4.count{
                            if GlobalUserData.unit4[i] == true{
                                result += 1
                            }
                        }
                    }
                }
            }
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView(GlobalUserData: userData())
    }
}
