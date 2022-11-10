//
//  AccountAvatarView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-01.
//

import SwiftUI

struct AccountAvatarView: View {
    var menuView=MenuView(title: "")
    
   @State var avatar:Bool
    var body: some View {
        VStack{
            Button(action: {avatar.toggle()}, label: {Image( "avatar").font(.system(size: 10, weight:.bold,design: .rounded )).frame(maxWidth: 100,maxHeight: 100).background( Color(.red)).cornerRadius(65).onTapGesture (perform:{
                avatar.toggle()
                })})
            
            
            
            
        
             //  if avatar == true {
               //    MenuView(title: "")
                   
              // }
        
      }
        
        
    
    }
}





struct AccountAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AccountAvatarView(avatar: false)
    }
    }
