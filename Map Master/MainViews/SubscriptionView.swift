//
//  SubscriptionView.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI
import RevenueCat

struct SubscriptionView: View {
    @StateObject var GlobalUserData: userData
    @State var currentOffering: Offering?
    @State var selected: Int = 2
    @State var color: Color = Color(hex: 0x5f74b3)
    var body: some View {
        ZStack{
            LessonsBack()
            VStack{
                
                Text("World Quest: Plus").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).padding(.bottom, -5.0)
                HStack{
                    Image("Canada").resizable().frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.1).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 1))
                    Text("30 hearts per day") .font(.title3).foregroundColor(Color.white).fontWeight(.heavy)
                    Spacer()
                }.padding(.all, 8.0).frame(width: UIScreen.main.bounds.width*0.9).background(
                    Color(hex: 0xb42315).cornerRadius(15).shadow(radius: 3))
                HStack{
                    Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.1).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 1))
                    Text("30 rating games per day") .font(.title3).foregroundColor(Color.white).fontWeight(.heavy).multilineTextAlignment(.leading)
                    Spacer()
                }.padding(.all, 8.0).frame(width: UIScreen.main.bounds.width*0.9).background(Color.indigo.cornerRadius(15).shadow(radius: 3))
                
                HStack{
                    Image("Norway").resizable().frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.1).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 1))
                    Text("Support our project") .font(.title3).foregroundColor(Color.white).fontWeight(.heavy).multilineTextAlignment(.leading)
                    Spacer()
                }.padding(.all, 8.0).frame(width: UIScreen.main.bounds.width*0.9).background(Color(hex: 0x30faf90).cornerRadius(15).shadow(radius: 3))
                HStack{
                    Image("Germany").resizable().frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width * 0.1).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 1))
                    Text("No ads in future") .font(.title3).foregroundColor(Color.white).fontWeight(.heavy).multilineTextAlignment(.leading)
                    Spacer()
                }.padding(.all, 8.0).frame(width: UIScreen.main.bounds.width*0.9).background(Color(hex: 0x34562).cornerRadius(15).shadow(radius: 3)).padding(.bottom, 10.0)
                
                VStack{
                    Text("Select your plan").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).padding(.bottom, -5)
                    if currentOffering != nil{
                        if selected == 1{
                            HStack{
                                Image(systemName: "checkmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("Monthly").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.monthly!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                        }else{
                            HStack{
                                Image(systemName: "xmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("Monthly").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.monthly!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).opacity(0.5).onTapGesture {
                                selected = 1
                            }
                        }
                        
                        if selected == 2{
                            HStack{
                                Image(systemName: "checkmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("3 Months").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.threeMonth!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                        }else{
                            HStack{
                                Image(systemName: "xmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("3 Months").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.threeMonth!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).opacity(0.5).onTapGesture {
                                selected = 2
                            }
                        }
                        
                        if selected == 3{
                            HStack{
                                Image(systemName: "checkmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("Annual").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.annual!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                        }else{
                            HStack{
                                Image(systemName: "xmark.seal.fill").resizable().frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1).foregroundColor(.white)
                                Text("Annual").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("\(currentOffering!.annual!.storeProduct.localizedPriceString)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            }.padding(.all, 7).frame(width: UIScreen.main.bounds.width*0.85).background(color.cornerRadius(15)).opacity(0.3).onTapGesture {
                                selected = 3
                            }
                        }
                    }
                    Button{
                        if selected == 1{
                            Purchases.shared.purchase(package: currentOffering!.monthly!) { (transaction, customerInfo, error, userCancelled) in
                                if customerInfo?.entitlements.all["pro"]?.isActive == true{
                                    userData().is_pro = true
                                    GlobalUserData.is_pro = true
                                    GlobalUserData.hearts = 30
                                    GlobalUserData.games_left = 30
                                }
                            }
                        }else if selected == 2{
                            Purchases.shared.purchase(package: currentOffering!.threeMonth!) { (transaction, customerInfo, error, userCancelled) in
                                if customerInfo?.entitlements.all["pro"]?.isActive == true{
                                    userData().is_pro = true
                                    GlobalUserData.is_pro = true
                                    GlobalUserData.hearts = 30
                                    GlobalUserData.games_left = 30
                                }
                            }
                        }else if selected == 3{
                            Purchases.shared.purchase(package: currentOffering!.annual!) { (transaction, customerInfo, error, userCancelled) in
                                if customerInfo?.entitlements.all["pro"]?.isActive == true{
                                    userData().is_pro = true
                                    GlobalUserData.is_pro = true
                                    GlobalUserData.hearts = 30
                                    GlobalUserData.games_left = 30
                                }
                            }
                        }
                    }label: {
                        Text("Purchase").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).padding(.vertical, 10.0).padding(.horizontal, 50).background(Color(hex: 0xd44326).cornerRadius(10))
                    }
                    .padding(.top)
                
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: UIScreen.main.bounds.width*0.9).background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                Spacer()
            }.onAppear{
                Purchases.shared.getOfferings{ offerings, error in
                    if let offer = offerings?.current, error == nil{
                        currentOffering = offer
                    }
                }
            }
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView(GlobalUserData: userData())
    }
}
