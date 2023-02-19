//
//  LoginPage.swift
//  astrology_for_every_day
//
//  Created by Rostyslav on 26.01.2023.
//

import SwiftUI
import AuthenticationServices

struct LoginPage: View {
    @State private var animateGradient = false
    @State private var animateGradient1 = false
    @StateObject var GlobalUserData: userData
    @State var showMainScreen: Bool = false
    @State var showRegistation: Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                MainBack()
                VStack{
                    Spacer()
                    //Image("logo").renderingMode(.original).resizable().foregroundColor(Color.red).frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.width*0.7).cornerRadius(30).overlay(RoundedRectangle(cornerRadius: 30)
                        //.stroke(Color.orange, lineWidth: 4))
                    //.shadow(radius: 100)
                    Spacer()
                    SignInWithAppleButton(.signIn, onRequest: onRequest, onCompletion: onCompletion)
                        .signInWithAppleButtonStyle(.white).frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/15).cornerRadius(30)
                    NavigationLink(destination: MainConnector(GlobalUserData: GlobalUserData), isActive: $showMainScreen) {
                        EmptyView()
                    }
                    
                    NavigationLink(destination: MainConnector(GlobalUserData: GlobalUserData)) {
                        Color.white.overlay(
                            Text("Continue without account").fontWeight(.medium).foregroundColor(.black).font(.title2)
                        ).frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/15).cornerRadius(30)
                    }
                    .padding(.vertical)
                    VStack{
                        Text("By logging in you agree to our").foregroundColor(.white)
                        HStack{
                            Button(action: {
                                if let url = URL(string: "https://www.freeprivacypolicy.com/live/65662290-8d44-4922-a743-55e572c96b0c") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text("Privacy Policy").foregroundColor(.mint)
                            }
                            Text("and").foregroundColor(.white)
                            Button(action: {
                                if let url = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Text("Terms of use").foregroundColor(.mint)
                            }
                        }
                    }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.96)
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarBackButtonHidden(true)
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
            GlobalUserData.user_id = credential.user
            GlobalUserData.name = credential.fullName?.givenName ?? "Rostyslav"
            GlobalUserData.email = credential.email ?? "st1tchqwerty@gmail.com"
            GlobalUserData.is_apple_id = true
            GlobalUserData.setDataFromCloudKit()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                if GlobalUserData.is_apple_id == true && GlobalUserData.is_record_exist == true{
                    showMainScreen = true
                }else if GlobalUserData.is_apple_id == true && GlobalUserData.is_record_exist == false {
                    GlobalUserData.CreateRecordCloudKit()
                    showMainScreen = true
                }
            }
        case .failure (let error):
            print("Authorization failed: " + error.localizedDescription)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage(GlobalUserData: userData())
    }
}
