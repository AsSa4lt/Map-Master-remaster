//
//  Leagues.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct Leagues: View {
    @State var score: Int = 0
    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            LessonsBack()
            VStack{
                Text("Leagues").font(.largeTitle) .fontWeight(.heavy).foregroundColor(Color.white)
                VStack{
                    Text("Rating counts as the sum of all points in ranked games").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color.white).frame(alignment: .trailing)
                    Text("Novice League").font(.title).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568)).multilineTextAlignment(.center).padding(.top)
                    HStack{
                        if score >= 10000{
                            ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).accentColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568)).scaleEffect(x: 1, y: 3, anchor: .center).shadow(radius: 3)
                        }else{
                            ProgressView(value: Double(score)/20000).frame(width: UIScreen.main.bounds.width*0.55).accentColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568)).scaleEffect(x: 1, y: 3, anchor: .center).shadow(radius: 3)
                        }
                        Text("10 000").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568))
                    }
                    
                    
                    Text("Intermediate League").font(.title).fontWeight(.heavy).shadow(radius: 1).foregroundColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0))
                    HStack{
                        if score >= 30000{
                            ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0)).shadow(radius: 3)
                        }else if score > 10000{
                            ProgressView(value: Double(score-10000)/30000).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0)).shadow(radius: 3)
                        }else{
                            ProgressView(value: 0).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0)).shadow(radius: 3)
                        }
                        Text("30 000").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568)).foregroundColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0))
                    }
                    Group{
                        Text("Advanced League").font(.title).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902))
                        HStack{
                            if score >= 70000{
                                ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902)).shadow(radius: 3)
                            }else if score > 30000{
                                ProgressView(value: Double(score-30000)/40000).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902)).shadow(radius: 3)
                            }else{
                                ProgressView(value: 0).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902)).shadow(radius: 3)
                            }
                            Text("70 000").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902))
                        }
                    }
                    
                    Group{
                        Text("Expert League").font(.title).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.5450980392156862, green: 0.0, blue: 0.5450980392156862))
                        HStack{
                            if score >= 120000{
                                ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.5450980392156862, green: 0.0, blue: 0.5450980392156862)).shadow(radius: 3)
                            }else if score > 70000{
                                ProgressView(value: Double(score-70000)/50000).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.5450980392156862, green: 0.0, blue: 0.5450980392156862)).shadow(radius: 3)
                            }else{
                                ProgressView(value: 0).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 0.5450980392156862, green: 0.0, blue: 0.5450980392156862)).shadow(radius: 3)
                            }
                            Text("120 000").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 0.5450980392156862, green: 0.0, blue: 0.5450980392156862))
                        }
                    }
                    Group{
                        Text("Master League").font(.title).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0))
                        HStack{
                            if score >= 180000{
                                ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0)).shadow(radius: 3)
                            }else if score > 120000{
                                ProgressView(value: Double(score-120000)/60000).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0)).shadow(radius: 3)
                            }else{
                                ProgressView(value: 0).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0)).shadow(radius: 3)
                            }
                            Text("180 000").font(.title2).fontWeight(.heavy).shadow(radius: 3).foregroundColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0))
                        }
                    }
                    Text("Ultimate League").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                    HStack{
                        if score > 200000{
                            ProgressView(value: 1).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.0, blue: 0.0)).shadow(radius: 3)
                        }else if score > 180000{
                            ProgressView(value: Double(score-180000)/20000).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.0, blue: 0.0)).shadow(radius: 3)
                        }else{
                            ProgressView(value: 0).frame(width: UIScreen.main.bounds.width*0.55).scaleEffect(x: 1, y: 3, anchor: .center).accentColor(Color(red: 1.0, green: 0.0, blue: 0.0)).shadow(radius: 3)
                        }
                        Text("200 000").font(.title2).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                    }
                }.padding().frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                Spacer()
            }
        }.onAppear{
            score = GlobalUserData.rating_border_country + GlobalUserData.rating_country_border + GlobalUserData.rating_country_flag + GlobalUserData.rating_flag_country + GlobalUserData.rating_capital_country + GlobalUserData.rating_country_capital + GlobalUserData.rating_name_country + GlobalUserData.rating_find_country + GlobalUserData.rating_find_states
        }
    }
}

struct Leagues_Previews: PreviewProvider {
    static var previews: some View {
        Leagues(GlobalUserData: userData())
    }
}
