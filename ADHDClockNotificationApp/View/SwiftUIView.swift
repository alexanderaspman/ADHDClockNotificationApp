//
//  SwiftUIView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-28.
//

import SwiftUI

struct CardSelectTimeView: View{
    var body:some View{
        VStack(spacing: 0){
            HStack{
                Button(action:
                        {
                    
                }, label: {
                    Rectangle()
                    .frame(width: 365,height: 40,alignment: .leading)})
                
                Button(action: {}, label: { Image(systemName:"line.horizontal.3")})
                
            }
                
                .padding().overlay(
                    Text("ClockworkNoAngst").font(.title2).fontWeight(.bold))
             
          
                   
                
                ScrollView{
                
            }
        }.ignoresSafeArea().padding(1)
    }
    }
    





struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardSelectTimeView()
    }
}
