//
//  MenuView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-01.
//

import SwiftUI




struct MenuView: View {
    @State var title :String
    var bgColor:CGColor = #colorLiteral(red: 0.7566142756, green: 0.4727536811, blue: 0.4809653167, alpha: 1)
    
    var body: some View {
        ZStack{
            
            
            
            
            Color(bgColor)
            
            
            
            VStack {
                
                VStack(spacing: 20) {
                    AccountAvatarView( avatar: true).padding(.top,30)
                    
                    VStack( spacing:16){
                        MenuRow(toggleOn: true, title: "Back",icon: "gear")
                        
                        MenuRow(toggleOn: true, title: "Account",icon: "gear")
                        MenuRow(toggleOn:true, title: "Add note",icon:"note")
                        MenuRow(toggleOn:true, title: "Your notes",icon:"note")
                        
                        MenuRow(toggleOn:true, title: "Timer", icon: "timer.square")
                    }
                    
                }.frame(alignment:Alignment(horizontal: .center, vertical: .bottom))
                
                
            }
            
            .padding(20)
            Spacer()
        }.frame(maxWidth:.infinity).frame(height:300).clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous)).shadow(radius:30).padding(.horizontal,30).frame(alignment:Alignment(horizontal: .center, vertical: .bottom)).padding()
        
        
    }
    
}
    
   

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(title:"")
    }
}




struct MenuRow: View {
    @State var projectedValue = true
    @State  var toggleOn:Bool
    @State var title : String
    @State var icon : String
    var body: some View {
        HStack(spacing:16){
            Image(systemName: icon).font(.system(size:20,weight:.light,design:.default)).imageScale(.large).frame(width:32,height:32).background(.white.opacity(0.2))
              Text(
            title
              ).font(.system(size:20,weight:.bold,design:.default)).frame(width:120,alignment:.leading).foregroundColor(.white.opacity(0.7))}
            
            
           
            
        }
    }

