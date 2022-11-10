//
//  MenuView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-01.
//

import SwiftUI



struct UserData: View {
    @State var title :String = "name"
    @State var user : String = "some user"
    @State var nickName : String = "fackdis"
    @State var show = false
    
    var bgColor:CGColor = #colorLiteral(red: 0.7566142756, green: 0.4727536811, blue: 0.4809653167, alpha: 1)
    var vtestBGColor:CGColor =  #colorLiteral(red: 1, green: 0.5190562712, blue: 0.8010718752, alpha: 0.85)
    
    var body: some View {
        
        
        
        
        
        
        
        ZStack{
        
       
            
            
            VStack(spacing:16){
               
                
               
                HStack{
                    AccountAvatarView(  avatar: false)
                   .padding()
                }.frame(width: 100, height: 100).padding(.bottom,90).cornerRadius(140)
                
                HStack{
                    Text("Name").frame(width: 100,alignment: .leading)
                    MenuRow(toggleOn: true, title: "\(user)",icon: "\(title)")
                    
                }
                HStack{
                    Text("Nickname").frame(width: 100,alignment: .leading)
                    MenuRow(toggleOn: true, title: "\(nickName)",icon: title)
                    
                    
                }
                
                
                
                
            }.frame(maxWidth:.infinity).frame(height:500).clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)).padding(.horizontal,30).background(Color(vtestBGColor)).cornerRadius(17).padding(39).shadow(radius:30)
        // VStack(alignment:.center, content : (View)-> ShapeStyle {
        
                    
            
        
        
    }
    
    }
}
         
       

struct AvatarUserView_Previews: PreviewProvider {
    static var previews: some View {
        UserData(title:"")
    }
}
