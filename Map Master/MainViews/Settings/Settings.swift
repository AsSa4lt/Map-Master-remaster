//
//  Settings.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI
import RevenueCat
import AuthenticationServices

struct Settings: View {
    @StateObject var GlobalUserData: userData
    @State var start: Date = Date()
    @State var end: Date = Date()
    @State private var isPresentingConfirm: Bool = false
    @State private var isPresentingConfirmDelete: Bool = false
    var body: some View {
        ZStack{
            LessonsBack()
            VStack{
                VStack{
                    if !GlobalUserData.is_pro{
                        VStack{
                            Text("If you bought premium before").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                            Button{
                                Purchases.shared.restorePurchases { customerInfo, error in
                                    //... check customerInfo to see if entitlement is now active
                                    userData().is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                                }
                            }label: {
                                Text("Restore Purchase").foregroundColor(.white).fontWeight(.heavy).font(.title).padding(.vertical, 5).padding(.horizontal, 15).background(Color(hex: 0xd44326).cornerRadius(10))
                            }
                        }.padding(.all).frame(width: UIScreen.main.bounds.width*0.85).background(Color.indigo.cornerRadius(15))
                    }
                    if GlobalUserData.is_pro == false{
                        NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                            HStack{
                                Text("No subscription").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                                Text("Subcribe").foregroundColor(.white).fontWeight(.heavy).font(.title).padding(.all, 5).background(Color(hex: 0xd44326).cornerRadius(10))
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.85).background(Color.indigo.cornerRadius(15))
                        }
                    }else{
                        HStack{
                            Image(systemName: "checkmark.circle.fill").resizable().frame(width: UIScreen.main.bounds.width*0.13, height: UIScreen.main.bounds.width*0.13).foregroundColor(.white)
                            VStack{
                                Text("Member since: \(start.formatted(.dateTime.day().month().year()) )").frame(alignment: .leading).foregroundColor(Color.white)
                                Text("Expires at: \(end.formatted(.dateTime.day().month().year()) )").frame(alignment: .leading).foregroundColor(Color.white)
                            }
                            Spacer()
                        }.padding(.all).frame(width: UIScreen.main.bounds.width*0.85).background(Color.indigo.cornerRadius(15))
                    }
                    VStack{
                        Text("By logging in you agree to our").foregroundColor(.white)
                        HStack{
                            Button(action: {
                                if let url = URL(string: "https://www.freeprivacypolicy.com/live/ef874c63-835e-449b-b7d3-bc705067ccda") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text("Privacy Policy").foregroundColor(.orange)
                            }
                            Text("and").foregroundColor(.white)
                            Button(action: {
                                if let url = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text("Terms of use").foregroundColor(.orange)
                            }
                        }
                        
                        if GlobalUserData.is_apple_id == false{
                            SignInWithAppleButton(.signIn, onRequest: onRequest, onCompletion: onCompletion)
                                .signInWithAppleButtonStyle(.white).frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height/15).cornerRadius(30)
                        }else{
                            VStack{
                                Text("You are logged via AppleID").font(.title2).fontWeight(.bold).padding(.vertical).frame(width: UIScreen.main.bounds.width/1.17).foregroundColor(.white)
                            }.frame(width: UIScreen.main.bounds.width/1.05)
                        }
                    }.padding(.all).frame(width: UIScreen.main.bounds.width*0.85).background(Color.indigo.cornerRadius(15))
                    
                    if GlobalUserData.is_apple_id == true{
                        VStack{
                            Text("You can delete all your data in the cloud by clicking this button.").foregroundColor(Color.white).font(.title2).multilineTextAlignment(.center).padding(.top).frame(width: UIScreen.main.bounds.width/1.25)
                            Color(.white).overlay(
                                Button("Delete all you data") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                    isPresentingConfirmDelete = true
                                }.confirmationDialog("Are you sure?",isPresented: $isPresentingConfirmDelete) {
                                    Button("Are you sure to delete all data?", role: .destructive) {
                                        GlobalUserData.deleteAllData()
                                    }
                                }.padding(.all)
                            ).frame(width: UIScreen.main.bounds.width/1.8, height: UIScreen.main.bounds.height/25).cornerRadius(15).foregroundColor(.red)
                        }
                        .padding(.bottom).frame(width: UIScreen.main.bounds.width*0.85).background(Color.indigo.cornerRadius(15))
                        
                        
                    }
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: UIScreen.main.bounds.width*0.9).background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                Spacer()
            }.onAppear{
                Purchases.shared.getCustomerInfo{ (customerInfo, error) in
                    GlobalUserData.is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                    start = customerInfo?.purchaseDate(forEntitlement: "pro") ?? Date()
                    end = customerInfo?.expirationDate(forEntitlement: "pro") ?? Date()
                }
            }
        }
    }
    private func onRequest(_ request: ASAuthorizationAppleIDRequest) {
        request.requestedScopes = [.email, .fullName]
     }
    
    private func onCompletion(_ result: Result<ASAuthorization, Error>) {
        switch result {
        case .success (let authResults):
            guard let credential = authResults.credential
                    as? ASAuthorizationAppleIDCredential
            else { return }
            GlobalUserData.email = credential.email ?? GlobalUserData.email
            GlobalUserData.name = credential.fullName?.givenName ?? "Player645"
            GlobalUserData.user_id = credential.user
            GlobalUserData.is_apple_id = true
            Purchases.shared.getCustomerInfo{ (customerInfo, error) in
                GlobalUserData.is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                if GlobalUserData.is_pro == true{
                    GlobalUserData.hearts = 30
                    userData().hearts = 30
                }
            }
            GlobalUserData.setDataFromCloudKit()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                if GlobalUserData.is_apple_id == true && GlobalUserData.is_record_exist == false {
                    GlobalUserData.CreateRecordCloudKit()
                }
            }
        case .failure (let error):
            print("Authorization failed: " + error.localizedDescription)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(GlobalUserData: userData())
    }
}
