//
//  Win:Loose Back.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import SwiftUI

struct Win_Loose_Back: View {
    @State var size_ball: CGFloat = UIScreen.main.bounds.width/2
    //left eye
    @State var eye_left_х: CGFloat = -UIScreen.main.bounds.width/10
    @State var eye_left_y: CGFloat = -UIScreen.main.bounds.width/12
    
    //rigth eye
    @State var eye_right_х: CGFloat = UIScreen.main.bounds.width/10
    @State var eye_right_y: CGFloat = -UIScreen.main.bounds.width/12
    
    var body: some View {
        ZStack{
            //shade
            Ellipse().foregroundColor(.black).frame(width: size_ball, height: size_ball/5).offset(y: UIScreen.main.bounds.width/4).opacity(0.2).blur(radius: 1)
            
            Image("Germany").resizable().frame(width: size_ball, height: size_ball).clipShape(Circle()).overlay(Circle().stroke(Color.orange, lineWidth: 1)).shadow(radius: 2).padding(.bottom)
           
            Image("beer").resizable().frame(width: size_ball/3, height: size_ball/2.5).offset(x: -size_ball/2, y: size_ball/5   )
            //left eye
            /*
            Group{
                Circle().foregroundColor(.white).frame(width: UIScreen.main.bounds.width/8).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 2)).shadow(radius: 2).offset(x: eye_left_х, y: eye_left_y)
            }*/
            
            HalfCircle().foregroundColor(.white).frame(width: UIScreen.main.bounds.width/6).overlay(HalfCircle().stroke(Color.black, lineWidth: 2))
                .shadow(radius: 2)
                .offset(x: eye_left_х, y: eye_left_y).rotationEffect(.degrees(-12))
            
            HalfCircle()
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width/6)
                .overlay(HalfCircle().stroke(Color.black, lineWidth: 2))
                .shadow(radius: 2)
                .offset(x: eye_right_х, y: eye_right_y).rotationEffect(.degrees(12))
            
            //right eye
            /*
            Group{
                Circle().foregroundColor(.white).frame(width: UIScreen.main.bounds.width/8).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 2)).shadow(radius: 2).offset(x: eye_right_х, y: eye_right_y)
            }*/
        }
    }
}

struct Win_Loose_Back_Previews: PreviewProvider {
    static var previews: some View {
        Win_Loose_Back()
    }
}
