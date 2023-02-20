//
//  LessonsView.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI
import RevenueCat
struct LessonsView: View {
    @StateObject var GlobalUserData: userData
    @State var result: Int = 0
    @State var showAnimation: Bool = false
    let calendar = Calendar.current
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
            ZStack{
                LessonsBack()
                VStack{
                    HStack{
                        if GlobalUserData.is_pro == false{
                            NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                                Image("noPro").resizable().frame(width: 40, height: 30).foregroundColor(.white).shadow(radius: 5)
                            }
                        }else{
                            Image("Pro").resizable().frame(width: 40, height: 30).foregroundColor(.white).shadow(radius: 5)
                        }
                        Text("\(result)").font(.title).fontWeight(.heavy).foregroundColor(.yellow)
                        Image(systemName: "microbe.fill").resizable().frame(width: 25, height: 25).foregroundColor(.yellow)
                        Spacer()
                        HStack{
                            if GlobalUserData.is_pro{
                                Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                                Image(systemName: "heart.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                                    
                            }else{
                                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                                    Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                                    Image(systemName: "heart.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                                }
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width*0.9).onAppear{
                        if GlobalUserData.hearts == 0{
                            showAnimation = true
                        }else{
                            showAnimation = false
                        }
                        GlobalUserData.hearts = userData().hearts
                    }
                    ScrollView(showsIndicators: false){
                        if GlobalUserData.hearts <= 0{
                            Text("Refills in \(24 - calendar.dateComponents([.hour], from: Date()).hour!) hours").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, -10)
                        }
                        if GlobalUserData.hearts <= 0{
                            Unit1Inactive(GlobalUserData: GlobalUserData)
                        }else{
                            Unit1(GlobalUserData: GlobalUserData)
                        }
                        if GlobalUserData.unit1.contains(false) || GlobalUserData.hearts <= 0{
                            Unit2Inactive(GlobalUserData: GlobalUserData)
                        }else{
                            Unit2(GlobalUserData: GlobalUserData)
                        }
                        if GlobalUserData.unit2.contains(false) || GlobalUserData.hearts <= 0{
                            Unit3Inactive(GlobalUserData: GlobalUserData)
                        }else{
                            Unit3(GlobalUserData: GlobalUserData)
                        }
                        if GlobalUserData.unit3.contains(false) || GlobalUserData.hearts <= 0{
                            Unit4Inactive(GlobalUserData: GlobalUserData)
                        }else{
                            Unit4(GlobalUserData: GlobalUserData)
                        }
                        
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
                        Purchases.shared.getCustomerInfo{ (customerInfo, error) in
                            GlobalUserData.is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                        }
                        showAnimation = true
                        reniew()
                        if GlobalUserData.unit1Change == true && GlobalUserData.is_apple_id == true{
                            GlobalUserData.setUnit1()
                            
                        }
                        if GlobalUserData.unit2Change == true && GlobalUserData.is_apple_id == true{
                            GlobalUserData.setUnit2()
                        }
                        if GlobalUserData.unit3Change == true && GlobalUserData.is_apple_id == true{
                            GlobalUserData.setUnit3()
                        }
                        if GlobalUserData.unit4Change == true && GlobalUserData.is_apple_id == true{
                            GlobalUserData.setUnit4()
                        }
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
                    }.onReceive(timer) { _ in
                        reniew()
                    }
                }
            }
    }
    func reniew(){
        if GlobalUserData.hearts < 0{
            GlobalUserData.hearts = 0
        }
        let components = calendar.dateComponents([.day], from: Date())
        if components.day! != GlobalUserData.last_refill_hearts{
            if GlobalUserData.is_pro == false{
                GlobalUserData.last_refill_hearts = components.day!
                GlobalUserData.hearts = 10
            }else{
                GlobalUserData.last_refill_hearts = components.day!
                GlobalUserData.hearts = 30
            }
        }
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView(GlobalUserData: userData())
    }
}
