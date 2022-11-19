//
//  NotesVerticalScroll.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-09.
//

import SwiftUI
import SceneKit

struct NotesVerticalScroll: View {
    @State var section = Section.self
    @Binding var text :  String
    @Binding var title :  String

    @Binding var dexriptionText :  String
    @Binding var toggleCard:Bool
    
    
    var body: some View {
        
        ZStack{
            if !toggleCard {      ScrollView(.vertical, content: {
                VStack{
                    
                    ForEach(sectionData){item in
                        SectionViewVer(section: item, title: item.title, text: item.text, descriptionText: item.text)
                        
                        
                        HoleView(title:$title,text:$text)

                    }
                    
                    
                    
                    
                }.frame(width: .infinity, alignment: .center)
                
                
                
            }
            )
            }
            else {
                VStack{
                    HoleView(title: $title, text: $text)
                }}
            }
        
            
        
        
                       }
    }

class InfoData:Identifiable{
var id = UUID()
    var title: String = ""
    var text:String = ""

}



struct HoleView : View{
    
   // var infoData : InfoData
 //   var section : Section
    var infoData=InfoData.self
   
    @Binding var title :  String

    @Binding var text :String
    var body: some View{
        VStack{
            
            SectionViewVer(title: title, text:text)
            Text(title)
            Text(text)
            
        }.frame(width: 400,height: 300).background(.blue)
    }
}

struct SectionViewVer: View {

    @State var section : Section!
    @State var toggleOn:Bool = false
    @State var ScaleFactor : Bool = false
    @State var avatar:Bool = false
    @State var toggleCard = false
    @State var title: String

    @State var text: String
    @State var descriptionText = ""
    @State var infinitNotInfinit = ["maxWidth: .inifite",""]
        var bgColor:CGColor = #colorLiteral(red: 1, green: 0.9124215852, blue: 0.8971559357, alpha: 0.8470588235)
        var color:CGColor =  #colorLiteral(red: 1, green: 0.6776536475, blue: 0.7351800351, alpha: 0.8470588235)
        
        var fallTrap:CGColor =   #colorLiteral(red: 0.504596293, green: 0.3172480464, blue: 0.3185980916, alpha: 1)
    var body: some View{
        ZStack {
            
            
            
            VStack(alignment: .center,spacing: 10) {
                
                //  DragAblleText.foregroundColor(.black)
                ZStack{
                    VStack{
                    VStack(alignment: .center,content:{
                        Button(action: {
                            title = self.section.title
                            text = section.text
                            
                            self.toggleCard.toggle()
                        }, label: {     rectNGLEFALLDOR
                            Text(section!.text).padding().frame(width: toggleOn ? 800  : -300  , height: 200,alignment: .topLeading).foregroundColor(.black).background(.white).offset(x:toggleOn  ? -40:0,y: 300).animation(Animation.easeIn(duration: 1).delay(2), value:toggleOn)
                        })
                        .shadow(radius: 15,x:0,y:20)
                 
                }).padding(.horizontal, 0).padding(.top,toggleOn ? 0 : 60)
                           }
                }
                
                
            }}
    }
                       
                        
                        
                        //.padding(.top,-10)
                        
                        
                        
                   
        
        
    var rectNGLEFALLDOR: some View {
        
        
        return  VStack{
            HStack(alignment:.top){
                
                
                VStack(){
                    
                    
                    
                    
                    
                    Rectangle().fill(Color(fallTrap)).frame(width: toggleOn ? 150 : 147,height: toggleOn ? 268 : 137 ,alignment: Alignment(horizontal: .center, vertical: .center)).rotation3DEffect(Angle(degrees:toggleOn ? 230: 100), axis: (x:toggleOn ? 1:1,y:toggleOn ? 4: 4,z:0)).rotationEffect(Angle(degrees:toggleOn ? 10 : -90), anchor:.top).position( x:toggleOn ? 92 : 27,y: toggleOn ? 330:208).padding(.horizontal,100)                              .animation(Animation.easeOut(duration: 1), value:toggleOn).position(x:20,y:0
                    ).onTapGesture {
                        
                        self.ScaleFactor.toggle()
                        self.toggleOn.toggle()
                        descriptionText = self.section.text
                        
                        toggleCard.toggle()
                    }                                                                                                                  }//.overlay(content:
                //Content(content:Content)  -> content={  return Text("titttlreeecdd")}
                
                (
                    section.image.scaleEffect(toggleOn ? 1 : 0.6).position( x:toggleOn ? 202 : 150 ,y:90).onTapGesture {
                        self.toggleOn.toggle()
                    }
                )
                Text(section.text.uppercased()).frame(width: 265).offset(x: 0,y:  toggleOn ? 450 : -230 ).animation(Animation.easeOut(duration: 3), value: toggleOn)
                Image("#").aspectRatio(contentMode: .fit)
                    .frame(width:220)
                
            } .shadow(radius: 20)
            Text(section.title)
                .font(.system(size:24,weight:.bold))
                .frame(width: 160, alignment: .bottomLeading)
                .foregroundColor(Color(color)).padding(30).onTapGesture {
                    self.toggleOn.toggle()
                }.position(x:40,y:90)
            
            
            
            
            
        }.frame(width: toggleOn ?  500 : 285   ,   height: toggleOn ?  500 :  225,alignment:Alignment( horizontal: .leading, vertical: .top))
            .background(section.color)
        
            .cornerRadius(30)
            .shadow(color: Color(color).opacity(0.2),radius:20,x:0,y:20).frame(width:.infinity)
        //    .offset(y:500)
        
    }
        }
    

struct NotesVerticalScroll_Previews: PreviewProvider {
    static var previews: some View {
        NotesVerticalScroll( text: .constant("") , title: .constant(""),dexriptionText: .constant(""), toggleCard: .constant(false))
    }
}
