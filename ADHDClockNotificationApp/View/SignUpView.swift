//
//  SignUpView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-07.
//

import SwiftUI

struct SignUpView: View {
    @State private var blurAmount = 0.0
    var body: some View {
        
        
        
        ZStack(alignment: .center) {
            
            
            Image("cube").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            
            VStack {
                
                
               
                    
            }.frame(width: 350).padding().blur(radius: 0).background(Rectangle().stroke(Color("card3")).opacity(0.5).padding(6)).frame(width: 400,height: 170).background( Color("card2").opacity(0.5)).blur(radius: 5)
            
            VStack{
                VStack(alignment: .leading
                       , spacing: 16){
                    Text("Sign up").font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    
                    
                    Text("Access the new way to, to keep up with coming apointments and remember your thoughts").font(.subheadline)
                        .foregroundColor(.white.opacity(0.8)).blur(radius: 0).frame(width: 330)
                }.blur(radius: blurAmount).padding(30).background(Rectangle().stroke(Color("card2")).opacity(0.8)).background( Color("card2").opacity(0.2))
            }
           
    }
    }
    }




struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
