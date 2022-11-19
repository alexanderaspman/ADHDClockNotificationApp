//
//  TabBar.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-15.
//

import SwiftUI

struct TabBar: View
{
    @State var startShow:Bool
    var switchCard:Bool
    var title:String
    var body: some View {
        TabView{
            
            ContentView(showCreateAccount: false, switchCard: switchCard).tabItem({
                Image(systemName: "house")
                Text("Home")
            })
            
            TimeLeftVisual( startShow: .constant(startShow)).tabItem({
                Image(systemName: "timer.circle.fill").animatableFonts(size: 29, weight: .bold, design: .rounded).foregroundColor(.white)
                Text("Timer")

            })
            TaskView( title: .constant("")  ).tabItem({
                Image(systemName: "timer.circle.fill").animatableFonts(size: 29, weight: .bold, design: .rounded).foregroundColor(.white)
                Text("Timer")

            })
            
                MenuView( title: title).tabItem({
                    Image(systemName: "contextualmenu.and.cursorarrow")
                    Text("Menu")
                
            })
        }.foregroundColor(.white)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(startShow: (false), switchCard: false, title: "")
    }
}
