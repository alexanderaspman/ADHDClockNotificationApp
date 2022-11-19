//
//  MultipleColorButton.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-19.
//

import SwiftUI

struct MultipleColorButton: View {
    @State private var angle = 0.0
    @State private var text = ""

    var gradient1: [Color] = [
        Color.init(red: 101/255, green: 134/255, blue: 2),
        Color.init(red: 1, green: 64/255, blue: 80/255),
        Color.init(red: 109/255, green: 1, blue: 185/255)]
    
    var body: some View {
        
        Button(action: {print("sign up")}, label: {
            GeometryReader(){
                geometry in
                ZStack{
                    AngularGradient(gradient: Gradient(colors: gradient1), center: .center, angle: .degrees(angle)).blendMode(.overlay)
                        .blur(radius: 8.0)
                        .mask(RoundedRectangle(cornerRadius: 16.0).frame(height: 50).frame(maxWidth: geometry.size.width - 16).blur(radius: 8.6))
                        .onAppear(){
                            withAnimation(.linear(duration: 7)){
                                self.angle+=360
                            }
                        }
                    Text("sign up")
                }
                
                
            }
        })}
               }
struct MultipleColorButton_Previews: PreviewProvider {
    static var previews: some View {
        MultipleColorButton()
    }
}
