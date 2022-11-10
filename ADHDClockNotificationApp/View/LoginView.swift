//
//  LoginView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-07.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            Blob1().frame(width: 400    ,height: 300)
                .foregroundStyle(.linearGradient(colors:[.pink,.secondary],startPoint: .topLeading,endPoint: .bottomTrailing))
        Blob2().frame(width: 400    ,height: 300)
                .foregroundStyle(.linearGradient(colors:[.secondary,.blue],startPoint: .topLeading,endPoint: .bottomTrailing))
    }}
}


struct Blob1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99275*width, y: 0.49303*height))
        path.addCurve(to: CGPoint(x: 0.54411*width, y: 0.96669*height), control1: CGPoint(x: 0.99275*width, y: 0.75463*height), control2: CGPoint(x: 0.78796*width, y: 1.11031*height))
        path.addCurve(to: CGPoint(x: 0.01827*width, y: 0.73707*height), control1: CGPoint(x: 0.32609*width, y: 0.83829*height), control2: CGPoint(x: 0.12287*width, y: 1.05185*height))
        path.addCurve(to: CGPoint(x: 0.54411*width, y: 0.01937*height), control1: CGPoint(x: -0.08633*width, y: 0.49303*height), control2: CGPoint(x: 0.29633*width, y: 0.01937*height))
        path.addCurve(to: CGPoint(x: 0.99275*width, y: 0.49303*height), control1: CGPoint(x: 1.09042*width, y: -0.08145*height), control2: CGPoint(x: 0.99275*width, y: 0.23144*height))
        path.closeSubpath()
        return path
    }
}




struct Blob2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.50698*height))
        path.addCurve(to: CGPoint(x: 0.51512*width, y: height), control1: CGPoint(x: width, y: 0.77927*height), control2: CGPoint(x: 0.78292*width, y: height))
        path.addCurve(to: CGPoint(x: 0.03024*width, y: 0.50698*height), control1: CGPoint(x: 0.23069*width, y: 0.91854*height), control2: CGPoint(x: 0.13514*width, y: 0.82389*height))
        path.addCurve(to: CGPoint(x: 0.51512*width, y: 0.01396*height), control1: CGPoint(x: -0.10456*width, y: 0.09969*height), control2: CGPoint(x: 0.24743*width, y: -0.04825*height))
        path.addCurve(to: CGPoint(x: width, y: 0.50698*height), control1: CGPoint(x: 0.85393*width, y: 0.09271*height), control2: CGPoint(x: width, y: 0.2347*height))
        path.closeSubpath()
        return path
    }
}
    
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
