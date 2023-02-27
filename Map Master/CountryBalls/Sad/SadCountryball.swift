//
//  SadBackView.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import SwiftUI

struct SadCountryball: View {
    @State var name: String
    @State var hat: String
    @State var left_hand: String
    @State var right_hand: String
    
    @State var size_ball: CGFloat = UIScreen.main.bounds.width/2
    //left eye
    @State var eye_left_х: CGFloat = -UIScreen.main.bounds.width/10
    @State var eye_left_y: CGFloat = -UIScreen.main.bounds.width/12
    
    //rigth eye
    @State var eye_right_х: CGFloat = UIScreen.main.bounds.width/10
    @State var eye_right_y: CGFloat = -UIScreen.main.bounds.width/12
    @State var right_angle: Double = 0
    @State private var rotationAngle: Double = 0
    @State private var move: Bool = false
    
    @State var beer_position: CGFloat = UIScreen.main.bounds.width*0.1
    @State var wait = true
    @State var control_segment: Double = -90
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            //shade
            Ellipse().foregroundColor(.black).frame(width: size_ball, height: size_ball/5).offset(y: UIScreen.main.bounds.width/4).opacity(0.2).blur(radius: 1)
            Group{
                
                Image("\(name)").resizable().frame(width: size_ball*1.5, height: size_ball).clipShape(Circle()).overlay(Circle().stroke(Color.orange, lineWidth: 1)).shadow(radius: 2).padding(.bottom)
                if hat != ""{
                    Image("\(hat)").resizable().frame(width: size_ball/1.6, height: size_ball/2.2).offset(y: -size_ball*0.5)
                }
                //left eye
                Group{
                    CircleSegmentOverlay(startAngle: Angle(degrees: control_segment), endAngle: Angle(degrees: 180-control_segment), clockwise: false).stroke(Color.black, lineWidth: 3).frame(width: size_ball/3).offset(x: eye_left_х, y: eye_left_y)
                    CircleSegment(startAngle: Angle(degrees: control_segment), endAngle: Angle(degrees: 180-control_segment), clockwise: false)
                        .foregroundColor(.white)
                        .frame(width: size_ball/3).offset(x: eye_left_х, y: eye_left_y)
                }.rotationEffect(.degrees(-right_angle))
                
                //right eye
                Group{
                    CircleSegmentOverlay(startAngle: Angle(degrees: control_segment), endAngle: Angle(degrees: 180-control_segment), clockwise: false).stroke(Color.black, lineWidth: 3).frame(width: size_ball/3).offset(x: eye_right_х, y: eye_right_y)
                    CircleSegment(startAngle: Angle(degrees: control_segment), endAngle: Angle(degrees: 180-control_segment), clockwise: false)
                        .foregroundColor(.white)
                        .frame(width: size_ball/3).offset(x: eye_right_х, y: eye_right_y)
                }.rotationEffect(.degrees(right_angle))
            }.rotationEffect(.degrees(rotationAngle))
            if left_hand != ""{
                Image("\(left_hand)").resizable().frame(width: size_ball/3, height: size_ball/2.5).offset(x: -size_ball/2, y: beer_position)
            }
            if right_hand != ""{
                Image("\(right_hand)").resizable().frame(width: size_ball/3, height: size_ball/2.5).offset(x: size_ball/2, y: beer_position)
            }
        }.onReceive(timer){ _ in
            //while control_segment < 0{
            if wait == true{
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    wait = false
                }
            }else{
                control_segment = control_segment + 1
                right_angle += 0.15
                beer_position = beer_position * 1.01
                if control_segment > 0 || right_angle > 15{
                    timer.upstream.connect().cancel()
                    control_segment = 0
                    move = true
                    rotate(right: true)
                }
            }
        }
    }
    func rotate(right: Bool){
        var k = right
        if k{
            if rotationAngle < 8{
                rotationAngle += 0.15
            }else{
                k = false
            }
        }else{
            if rotationAngle > -8{
                rotationAngle -= 0.15
            }else{
                k = true
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.015) {
            rotate(right: k)
        }
    }
}

struct SadCountryball_Previews: PreviewProvider {
    static var previews: some View {
        SadCountryball(name: String(), hat: String(), left_hand: String(), right_hand: String())
    }
}
