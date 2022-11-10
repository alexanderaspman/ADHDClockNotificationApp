//
//  ContentView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-28.
//

import SwiftUI

struct ContentView2: View {
   @State var minutesSelects: Int = 30
    var color1 = #colorLiteral(red: 1, green: 0.2963147204, blue: 0.3513806922, alpha: 0.8470588235)
    
    var color2 = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
    
    
    
    var color3 = #colorLiteral(red: 0.6707034111, green: 0.2758687735, blue: 0.2590719461, alpha: 1)
    
   // #colorLiteral(red: 0.6707034111, green: 0.2758687735, blue: 0.2590719461, alpha: 1)
    
    
    //#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
 //   #colorLiteral(red: 0.9126819372, green: 0.325309515, blue: 0.3447412252, alpha: 1)
    var color4 = #colorLiteral(red: 1, green: 0.2705882353, blue: 0.2274509804, alpha: 1)   // #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)
    func body (body:any View)
    {
        let View = self.body.background(Color(color3)).onAppear()
                    
                  }
                                 
    var body: some View {
       ZStack{
        
        VStack {
            
            Spacer()

            
          
            
        }.background(Color(color4)).padding(40)
       }.safeAreaInset(edge:.top,alignment: .center,
                    content: {
           
           
       }).ignoresSafeArea().background(Color(color4))
        
    }
                                                           }




struct BottomCardView : View{
    @State var minutesSelects: Int = 30
    var color1 = #colorLiteral(red: 1, green: 0.2963147204, blue: 0.3513806922, alpha: 0.8470588235)
    
    var color2 = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
    
    
    
    var color3 = #colorLiteral(red: 0.6707034111, green: 0.2758687735, blue: 0.2590719461, alpha: 1)
    
   // #colorLiteral(red: 0.6707034111, green: 0.2758687735, blue: 0.2590719461, alpha: 1)
    
    
    //#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
 //   #colorLiteral(red: 0.9126819372, green: 0.325309515, blue: 0.3447412252, alpha: 1)
    var color4 = #colorLiteral(red: 1, green: 0.2705882353, blue: 0.2274509804, alpha: 1)
    var body : some View {
        ZStack{
            VStack(alignment: .center ){
                Rectangle().padding(40).frame(width: 450, height:540).background(Color(color3))}
            VStack{
             
                Text("\(minutesSelects) min").padding(10).font(.title2).bold().foregroundColor(Color(.white))
            HStack(alignment: .center, spacing: 20){
                
                Text("- 15").onTapGesture {
                
                     minutesSelects -= 15
                
                }.bold().font(.title3)
                Spacer(minLength: 30)
                            Spacer(minLength: 30)
                Text("+ 15").onTapGesture {
                    minutesSelects += 15
                }.bold().font(.title3)            }.padding(18).background(Color(color3)).foregroundColor(Color(.lightText)).frame(width: 286,height: 260).cornerRadius(50)
            
            Button(action: {}, label: {Text("Start clock").padding(15).cornerRadius(20)}).bold().font(.title).foregroundColor(Color(.darkText)).padding().cornerRadius(20)
        
              
            }.frame(height:400,alignment: Alignment(horizontal: .center, vertical: .center)).background(Color(color3))}
    }
    
}


//struct ContentView_Previews: PreviewProvider {
  // static var previews: some View {

        
        //ContentView(minutesSelects: 30)
   // }
    
//}
