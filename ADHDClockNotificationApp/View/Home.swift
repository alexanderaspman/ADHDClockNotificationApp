//
//  Home.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-01.
//

import SwiftUI

struct Home: View {
    
    
    
    
    
    @State var text : String
    
    @State var avatar : Bool = false
    @State var toggleOn:Bool = true
    
    var bgColor:CGColor = #colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235)
    var color1:CGColor =  #colorLiteral(red: 0.2648722331, green: 0.196965529, blue: 0.2114571208, alpha: 1)
    
    
    
    var zstackColor:CGColor = #colorLiteral(red: 0.6087491585, green: 0.5563373473, blue: 0.5481223052, alpha: 0.8470588235)
    var body: some View {
        
        
        ZStack {
            
            
            Color(#colorLiteral(red: 0.6087491585, green: 0.5563373473, blue: 0.5481223052, alpha: 0.8470588235))
            
            
            VStack{
                MenuView(title: text  ).offset(x:0,y:toggleOn ? 0: 30).onTapGesture {
                    toggleOn.toggle()
                    
                }
                HStack{
                    
                    
                //    Text("Notepad")
                  //      .font(.system(
                         //   size:27,weight:.bold)).padding(.top,260).padding(.horizontal,20)
                    
                 //   Spacer()
                    
                    
                 //   AccountAvatarView( avatar: avatar)
                 //       .padding(.horizontal).padding(.top,260)
                }.onTapGesture{
                    toggleOn.toggle()
                    
                }
                
                VStack(alignment: .center,spacing: 40) {
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            ForEach(sectionData){item in
                                
                                Spacer()
                                SectionView(section: item, text: item.text   ).padding(.top,100).onTapGesture {
                                    self.toggleOn.toggle()
                                    
                                }
                                
                                
                            }.shadow(radius: 15,x:0,y:20)
                            
                        }.padding(.horizontal, 0).padding(.bottom)
                        
                        
                        
                        
                        
                        
                        
                        Spacer()
                        
                    }
                }.padding(.top, self.toggleOn ? 0 : -101).overlay(ZStack{
                    Color.clear.background(.ultraThinMaterial)
                        .blur(radius: 10)
                    
                    Text("ScrollHorizontal").animatableFonts(size: 32, weight: .bold , design: .none).font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20).padding(.top,80)
                }.frame(height:70)
                    .frame(maxHeight:  .infinity, alignment: .top))
                
                
                
                
                
                
                
                
                
            }.padding(.top,4)
                .background(.white).clipShape(RoundedRectangle(cornerRadius: 30, style:.continuous)).shadow(color: Color.black.opacity(0.2) ,radius: 20, x: 0 , y: 20).offset(y: toggleOn ? -230 : 40).rotation3DEffect(Angle(degrees: toggleOn ? 0 : -10), axis: (x: 10.0, y: 0, z: 0)).scaleEffect(toggleOn ? 1:0.9).animation(.spring(response: 0.5, dampingFraction: 0.6,blendDuration: 0) , value: toggleOn)
                .edgesIgnoringSafeArea(.all)
            
            
        }
        
        
    }
    
    var RotationAnimationView:some View{
        @State var toggleOn:Bool = false
        @State var setState=CGSize.zero
        @State var isDragging = false
        
        
        return     VStack{
            
            
            HStack(spacing: 0){
                
                Rectangle().fill(Color(.red)).frame(width: toggleOn ? 100 : 117,height: 218,alignment: Alignment(horizontal: .center, vertical: .center)).rotation3DEffect(Angle(degrees:toggleOn ? 80: 70), axis: (x:toggleOn ? 1:1,y:toggleOn ? 4: 2,z:0)).rotationEffect(Angle(degrees:toggleOn ? 196 : 95), anchor:.bottom).position( x:toggleOn ? 123 : 109,y: toggleOn ? 220:208)                                  .animation(.easeIn(duration: 1.5), value:toggleOn)
                // RectangleAnimation(toggleOn: $toggleOn).gesture(DragGesture().onChanged(value in
                //self. setSTate))
                
                Text("Start animation")
            }
        }.frame(width: .infinity, alignment: Alignment(horizontal: .leading, vertical: .bottom))
    }
    
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home(text: "", avatar: false, toggleOn: true )
        }
    }
    
    struct SectionView: View {
        var section : Section
        @State var toggleOn:Bool = false
        @State var avatar:Bool = false
        @State var text: String
        var bgColor:CGColor = #colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235)
        var color:CGColor =  #colorLiteral(red: 1, green: 0.6776536475, blue: 0.7351800351, alpha: 0.8470588235)
        
        var fallTrap:CGColor =   #colorLiteral(red: 0.504596293, green: 0.3172480464, blue: 0.3185980916, alpha: 1)
        var body: some View{
            ZStack {
                
                rectNGLEFALLDOR
                
                
                
                
                
                
                
              //  DragAblleText.foregroundColor(.black)
                
                
             //   Text(section.text).padding().frame(width: .infinity)
                
              
                
                
            }
        }
        
        var rectNGLEFALLDOR: some View {
            return ZStack{
                
                
                
                HStack(alignment:.top){
                    
                    VStack{
                        
                        
                        
                        VStack(){
                            
                            
                            
                            
                            
                            Rectangle().fill(Color(fallTrap)).frame(width: toggleOn ? 150 : 147,height: toggleOn ? 268 : 37 ,alignment: Alignment(horizontal: .center, vertical: .center)).rotation3DEffect(Angle(degrees:toggleOn ? 130: 100), axis: (x:toggleOn ? 1:1,y:toggleOn ? 4: 4,z:0)).rotationEffect(Angle(degrees:toggleOn ? 196 : 50), anchor:.bottom).position( x:toggleOn ? 123 : 149,y: toggleOn ? 220:208)                                  .animation(.easeOut(duration: 1), value:toggleOn).position(x:-20,y:-30
                            ).onTapGesture {
                                
                                
                                self.avatar.toggle()
                            }                                                                                                                       }}
                    (
                        section.image.position(x:140,y:100).onTapGesture {
                            self.toggleOn.toggle()
                        }
                    )
                    Image("#").aspectRatio(contentMode: .fit)
                        .frame(width:220)
                    
                } .shadow(radius: 20)
                Text(section.title)
                    .font(.system(size:24,weight:.bold))
                    .frame(width: 160, alignment: .bottomLeading)
                    .foregroundColor(Color(color)).padding(30).onTapGesture {
                        self.toggleOn.toggle()
                    }.position(x:130,y:120)
                Text(section.text.uppercased()).frame(width: 165).offset(x: 0,y:  toggleOn ? 600 : -130 ).animation(Animation.easeOut(duration: 3), value: toggleOn)
                
                
                
                
            } .frame(width:275,height:425,alignment:Alignment( horizontal: .leading, vertical: .top))
                .background(section.color)
                .cornerRadius(30)
                .shadow(color: Color(color).opacity(0.2),radius:20,x:0,y:20)
            
            
            
            
            
            
            
        }
        var DragAblleText:some View {
            
            VStack(content:{
                
                Text(section.text).offset(x:30,y: toggleOn ? -400 : 90).multilineTextAlignment ( .center).font(.subheadline).lineSpacing(4.0).padding(20).background(.white).cornerRadius(30).shadow(radius: 20)
                
                
            })}
        
        
        
        
        
        
        
        //Text("section.textsection.teection.textsection.teection.textsection.teection.textsection.teection.textsection.teection.textsection.teection.textsection.teection.textsection.teection.textsection.text")
        
        
        
        
        
        
        
        
        
        
        
        
        
    }}

struct Section:Identifiable{
    var id = UUID()
    var title : String
    var text : String
    var logo : String
    var image:Image
    var color : Color
    
}


let sectionData =
    [
    
        
        Section( title: "NOTE1 Title", text: "description text", logo: "Loga", image: Image("cube"), color: Color(#colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235))),
           
           
            Section( title: "NOTE2 Title", text: "description text description text description text description text description text description text", logo: "Loga", image: Image("cube"), color:Color(#colorLiteral(red: 1, green: 0.4159984815, blue: 0.5757726487, alpha: 0.8470588235))),
        
        
        Section( title: "NOTE2 Title", text: "description text description text description text description text description text description text", logo: "Loga", image: Image("cube"), color:Color(#colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235))),
        
        
        Section( title: "NOTE2 Title", text: "description text description text description text description text description text description text", logo: "Loga", image: Image("cube"), color:Color(#colorLiteral(red: 1, green: 0.4159984815, blue: 0.5757726487, alpha: 0.8470588235))),
        
        
        Section( title: "NOTE2 Title", text: "description text description text description text description text description text description text", logo: "Loga", image: Image("cube"), color:Color(#colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235))),
        
        
        Section( title: "NOTE2 Title", text: "description text description text description text description text description text description text", logo: "Loga", image: Image("cube"), color:Color(#colorLiteral(red: 1, green: 0.4159984815, blue: 0.5757726487, alpha: 0.8470588235)))

            
        
    ]


