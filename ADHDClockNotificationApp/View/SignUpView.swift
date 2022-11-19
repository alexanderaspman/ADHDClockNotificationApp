//
//  SignUpView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-07.
//

import SwiftUI
import Firebase

struct SignUpView: View {
   
    @Binding var email: String
    @Binding var password : String
    @State var text :String
    @State var startAnimation:Bool = false
    @State var showCreateAccount: Bool
  @State  var color1:CGColor =  #colorLiteral(red: 0.3116869926, green: 0.3075950146, blue: 0.3075473309, alpha: 1)
    @State var color2: CGColor = #colorLiteral(red: 0.4970365763, green: 0.539063096, blue: 0.6121460795, alpha: 1)
    var body: some View {
        ZStack{
            Color(cgColor: color1).aspectRatio(contentMode: .fill).ignoresSafeArea(.all)
            VStack{
                Blob1().blendMode(.darken).frame(width: 400    ,height: 300).offset(x:20,y:startAnimation ? 200:-30)
                    .foregroundStyle(.linearGradient(colors:[.pink,.secondary],startPoint: .topLeading,endPoint: .bottomTrailing)).blur(radius: 4).rotationEffect(Angle(degrees:startAnimation ? -10 : 20)).rotation3DEffect(Angle(degrees: startAnimation ? 30 : 10), axis: (x:9,y:5,z:0)).animation(.easeInOut(duration: 30).repeatForever(), value: startAnimation)
                Blob2().blendMode(.hardLight).frame(width: 400    ,height: 300)
                    .foregroundStyle(.linearGradient(colors:[.secondary,.blue],startPoint: .topLeading,endPoint: .bottomTrailing)).blur(radius: 4).animation(.easeInOut(duration: 20).repeatForever(), value: startAnimation).rotation3DEffect(Angle(degrees: startAnimation ? -200 : 200), axis: (x:0,y:10,z:0))
            }.blur(radius: 0).onAppear{startAnimation=true}
            HStack(alignment:.center){ ZStack{
               
               
               Rectangle().frame(maxWidth:360,maxHeight: 300).padding(20).background(Color(.placeholderText).opacity(0.1))
                SignIn()
           } .padding(90)}.padding(.horizontal,250).background(.opacity(0.1))
 }.ignoresSafeArea()
    }
    
    
    
   

}
    



    
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(email: .constant(""), password: .constant(""), text: "",startAnimation: false, showCreateAccount: false)
    }
}
struct SignIn:View{
    @State var loginName = ""
    @State var passwordInput = ""
    @State var email = ""
    @State var password = ""
var body: some View {
    
    ZStack{
        Color("card3")
        VStack(){
            HStack{
            VStack{
                VStack{ ButtonCreateUser(showCreateAcount: false).padding(.horizontal,20)
                    
                    Text("username").foregroundColor(.white).padding(11).animatableFonts(size: 18, weight: .heavy, design: .default).frame(width: 268,height:139, alignment: .topLeading)
                        .background(Color(.clear).opacity(0.8)).cornerRadius(12).blendMode(.hardLight)
                    
                  //  Text(showCreateAcount ? "Type in email:":"Type in  username").padding(7).padding(7).foregroundColor(Color(.white)).animatableFonts(size: 20, weight: .heavy, design: .default).frame(width: 268,height:39, alignment: .topLeading).cornerRadius(20).padding(.top,-155)
                    
                    
                    
                    
                    TextField("", text: $loginName).padding().frame(width:240,height:40,alignment: .leading).background(.white).padding(.horizontal,10).padding(.top,-90)
                      
                     
                    
                    
                    
                    Text("password").padding(7).padding(7).foregroundColor(Color(.white)).animatableFonts(size: 20, weight: .heavy, design: .default).frame(width: 268,height:39, alignment: .topLeading).cornerRadius(20)
                    
                    
                    SecureField("", text: $passwordInput)
                        .frame(width:240,height:40).blur(radius: 10).background(.white).padding(.top,10)
                }}}.padding(.top,40).shadow(color:Color(.black).opacity(0.4),radius:3,x:5, y: 3)
            
            
            Button(action: {login()}, label: {Text("Sign in")})
        ZStack{
           
           
        }

        }.frame(alignment: Alignment(horizontal: .center, vertical: .center))
        
    }.padding().frame(width: 330,height:450 , alignment: .topLeading).background(Color("card3.dark").blendMode(.hardLight).border(.black).cornerRadius(20).shadow(color: SwiftUI.Color(.black), radius: 10, x: 10, y: -5)
                                                        
    )
    
    
    
}
    func login(){
        Auth.auth().signIn(withEmail: email, password: password){
            (result, error) in
            
            if error  != nil {
                print(error?.localizedDescription ?? "")
            }  else {
                print("success")
            }
        }
    }
}





/*struct SignUpCard: View {
    var color1:CGColor =  #colorLiteral(red: 0.3116869926, green: 0.3075950146, blue: 0.3075473309, alpha: 1)

    var color2: CGColor = #colorLiteral(red: 0.352851193, green: 0.4045609432, blue: 0.4391228171, alpha: 1)
    var color3: CGColor = #colorLiteral(red: 0.7957950649, green: 0.9124174962, blue: 0.9903658472, alpha: 1)

    @State var loginName = ""
    @State var passwordInput = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        ZStack{
            HStack{
            VStack(){
                Text("Type your name:").padding(7).foregroundColor(Color(color3)).animatableFonts(size: 23, weight: .heavy, design: .default).frame(width: 360,height:39, alignment: .topLeading).cornerRadius(20)
                    
                    TextField("", text: $loginName).frame(height:40).blur(radius: 10).background(.white).padding(.horizontal,10).padding(.top,20)
                
                Text("Type in your password:").padding(7).padding(7).foregroundColor(Color(color3)).animatableFonts(size: 20, weight: .heavy, design: .default).frame(width: 280,height:39, alignment: .topLeading).cornerRadius(20)
                    
                
                SecureField("", text: $passwordInput)
                    .frame(height:40).blur(radius: 10).background(.white).padding(.horizontal,10).padding(.top,10)
                }.cornerRadius(20)
            
}.padding().frame(width: 360,height:300 , alignment: .center).cornerRadius(20).padding(.horizontal,50)
            
            
        }
    }
    }
*/
