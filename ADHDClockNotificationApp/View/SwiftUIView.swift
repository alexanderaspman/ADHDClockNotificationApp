//
//  SwiftUIView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-28.
//

import SwiftUI

struct ContentView: View{
    @State var title: String
    @State var description : String
    var color1 = #colorLiteral(red: 0.4566026926, green: 0.2162504494, blue: 0.2162116766, alpha: 1)
    var color2 = #colorLiteral(red: 0.5044957399, green: 0.3130049706, blue: 0.3142708242, alpha: 1)
    var color3 = #colorLiteral(red: 0.6872907281, green: 0.4612035751, blue: 0.4617624283, alpha: 1)
    var bgColor = #colorLiteral(red: 0.4540982246, green: 0.2826255262, blue: 0.2843172252, alpha: 1)
    var body:some View{
        VStack(spacing: 0){
            HStack{
                Button(action:
                        {
                    
                }, label: {
                    Rectangle()
                    .frame(width: 345,height: 40,alignment: .leading)})
                
                Button(action: {}, label: { Image(systemName:"line.horizontal.3")})
                
            }
            
            .padding().overlay(
                Text("ClockworkNoAngst").font(.title2).fontWeight(.bold))
            
            
            HStack{
                ZStack{
                    Rectangle().fill(Color(color3)).frame(width: 201, height: 190).position(x:150,y:296)
                    
                    
                    Button(action:
                            {print("timer test")
                       print("")
                    }, label: {
                        Rectangle().fill(Color(color1)).frame(width: 180,height: 180,alignment: Alignment(horizontal: .trailing, vertical: .center)).position(x:234,y:227)
                        
                      // Text("Timer").foregroundColor(.black).font(.largeTitle).rotationEffect(Angle(degrees: 70)).position(x:70,y:190)
                        
                    })
                    
                    Button(action:
                            {
                        print("notes test Btn")
                       
                    }, label: {
                        Rectangle().fill(Color(color2)).frame(width: 147,height: 218,alignment: Alignment(horizontal: .center, vertical: .center)).rotationEffect(Angle(degrees: -30)).position(x:189,y:258)})
                 //   Text("Notes").position(x:220,y:190).bold().font(.largeTitle).rotationEffect(Angle(degrees: -30)).rotation3DEffect(Angle(degrees: 0), axis: (x:5,y:4,z:1))
                   
                    
                    
                }
                
            }.shadow(color:Color(.tintColor).opacity(0.072),radius: 0, x:5,y:-5)
            
    Spacer()
            
            
        Text("Ui View")
        }.background(Color(bgColor)).ignoresSafeArea().padding(1)
    }
}

    
struct BottomDragView:View{
    var content:any View
    var body: some View{
        VStack{
            HStack(spacing: 40){
                
            Text("Text")
                
            }
        }.frame(width: .infinity, alignment: Alignment(horizontal: .leading, vertical: .bottom))
    }
}




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
      //  ContentView(title: "", description: "")
        BottomDragView(content: <#View#>)

    }
}
