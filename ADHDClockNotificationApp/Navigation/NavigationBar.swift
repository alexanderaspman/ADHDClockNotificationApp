//
//  NavigationBar.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-10.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        ZStack{
            Color.clear.background(.ultraThinMaterial)
                .blur(radius: 10)
            
            Text("ScrollHorizontal").animatableFonts(size: 32, weight: .bold , design: .none).font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20).padding(.top,80)
        }.frame(height:70)
            .frame(maxHeight:  .infinity, alignment: .top)    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
