//
//  LoginView.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-11-07.
//

import SwiftUI

struct LoginView: View {
    @Binding var email: String
    @Binding var password : String
    @Binding var signInSuccesss: Bool
    @State var showCreateAcount: Bool = false
  //  @State  var authFirebase: SSLAuthenticate

    @State var text :String
    @State var startAnimation:Bool = false
    var color1:CGColor =  #colorLiteral(red: 0.3116869926, green: 0.3075950146, blue: 0.3075473309, alpha: 1)
    
    var color2: CGColor = #colorLiteral(red: 0.4970365763, green: 0.539063096, blue: 0.6121460795, alpha: 1)
    var color3:any ShapeStyle = ( #colorLiteral(red: 0.3116869926, green: 0.3075950146, blue: 0.3075473309, alpha: 1)) as! any ShapeStyle

    var body: some View {
        ZStack{
            Color(cgColor: color1)
            VStack{
                
                
                blob1
                
                blob2
                
                
                
                
            }.blur(radius: 0).onAppear{startAnimation=true}
            
            
            
                Button(action: {print("test")}, label: {ButtonCreateUser(showCreateAcount: showCreateAcount)})
                
                
            LoginCard(loginIn: "", signAcount: "", loginName: "", showCreateAcount: .constant(false)).background(Color(color3 as! CGColor))
                
                
                VStack{
                    TextField("Your email",text:$email)
                }.frame(height: 136)
                    .frame(maxWidth: .infinity)
                   // .background(BlurView(style:.systemMaterial))
                    
                    .clipShape(RoundedRectangle(cornerRadius: 30,style:.continuous)).edgesIgnoringSafeArea(.bottom)
                    .shadow(color:Color.black.opacity(0.15),  radius: 20,x: 0,y: 20)
                    .padding(.horizontal)
                    .offset(y:460)
                
               }}
        
        
    var blob1: some View{
        Blob1().blendMode(.darken).frame(width: 400    ,height: 400).offset(x:20,y:startAnimation ? 200:-30)
            .foregroundStyle(.linearGradient(colors:[.pink,.secondary],startPoint: .topLeading,endPoint: .bottomTrailing)).blur(radius: 4 ).rotationEffect(Angle(degrees:startAnimation ? -10 : 20)).rotation3DEffect(Angle(degrees: startAnimation ? 30 : 10), axis: (x:9,y:5,z:0)).animation(.easeInOut(duration: 30).repeatForever(), value: startAnimation)
    }
    var blob2: some View {
        Blob2().blendMode(.hardLight).frame(width: 500    ,height: 350)
            .foregroundStyle(.linearGradient(colors:[.secondary,.blue],startPoint: .topLeading,endPoint: .bottomTrailing)).blur(radius: 4).animation(.easeInOut(duration: 20).repeatForever(), value: startAnimation).rotation3DEffect(Angle(degrees: startAnimation ? -200 : 200), axis: (x:0,y:10,z:0))
    }
}

struct BlurView:ShapeStyle
{
    
}


struct Blob1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99275*width, y: 0.49303*height))
        path.addCurve(to: CGPoint(x: 0.54411*width, y: 0.96669*height), control1: CGPoint(x: 0.99275*width, y: 0.75463*height), control2: CGPoint(x: 0.78796*width, y: 1.11031*height))
        path.addCurve(to: CGPoint(x: 0.01827*width, y: 0.73707*height), control1: CGPoint(x: 0.32609*width, y: 0.83829*height), control2: CGPoint(x: 0.12287*width, y: 1.05185*height))
        path.addCurve(to: CGPoint(x: 0.54411*width, y: 0.01937*height), control1: CGPoint(x: -0.08633*width, y: 0.49303*height), control2: CGPoint(x: 0.29633*width, y: 0.01937*height))
        path.addCurve(to: CGPoint(x: 0.99275*width, y: 0.49303*height), control1: CGPoint(x: 1.09042*width, y: -0.08145*height), control2: CGPoint(x: 0.99275*width, y: 0.23144*height))
        path.closeSubpath()
        return path
    }
}




struct Blob2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.50698*height))
        path.addCurve(to: CGPoint(x: 0.51512*width, y: height), control1: CGPoint(x: width, y: 0.77927*height), control2: CGPoint(x: 0.78292*width, y: height))
        path.addCurve(to: CGPoint(x: 0.03024*width, y: 0.50698*height), control1: CGPoint(x: 0.23069*width, y: 0.91854*height), control2: CGPoint(x: 0.13514*width, y: 0.82389*height))
        path.addCurve(to: CGPoint(x: 0.51512*width, y: 0.01396*height), control1: CGPoint(x: -0.10456*width, y: 0.09969*height), control2: CGPoint(x: 0.24743*width, y: -0.04825*height))
        path.addCurve(to: CGPoint(x: width, y: 0.50698*height), control1: CGPoint(x: 0.85393*width, y: 0.09271*height), control2: CGPoint(x: width, y: 0.2347*height))
        path.closeSubpath()
        return path
    }
}
    
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(email: .constant(""), password: .constant(""), signInSuccesss: .constant(false) ,text: "")
    }
}
struct LoginCard: View {
    var color2: CGColor = #colorLiteral(red: 0.352851193, green: 0.4045609432, blue: 0.4391228171, alpha: 1)
    var color3: CGColor = #colorLiteral(red: 0.7957950649, green: 0.9124174962, blue: 0.9903658472, alpha: 1)
    @State var loginIn : String
    @State var signAcount : String
    @State var loginName :String
    @State var passwordInput = ""
    @State var email = ""
    @State var password = ""
    @Binding var showCreateAcount:Bool
    
    var switchBetweenCards = LoginSigneAccount(loginName: .constant(""), createName: "", createEmail: "", createPassword: "")
    
     
    //    .init(loginName: loginName, email: email, password: password,  edetingEmailTextField: email, edetingPasswordTextField: password, color1: Color, color2: Color, color3: Color, switchCard: (false), loginINCreate: showCreateAcount)
        

    var body: some View {
        
        ZStack{
            Color("card3")
            VStack(){
                VStack{
                    VStack{ ButtonCreateUser(showCreateAcount: showCreateAcount).padding(.horizontal,20).onTapGesture {
                        self.showCreateAcount.toggle()
                    }
                        
                        Text(switchBetweenCards.loginName).foregroundColor(.white).padding(11).animatableFonts(size: 18, weight: .heavy, design: .default).frame(width: 290,height:159, alignment: .top)
                            .background(Color(.clear).opacity(0.8)).cornerRadius(12).blendMode(.hardLight)
                        
                      //  Text(showCreateAcount ? "Type in email:":"Type in  username").padding(7).padding(7).foregroundColor(Color(.white)).animatableFonts(size: 20, weight: .heavy, design: .default).frame(width: 268,height:39, alignment: .topLeading).cornerRadius(20).padding(.top,-155)
                        
                        
                        
                        
                        TextField("", text: $loginName).padding().frame(width:240,height:40,alignment: .leading).background(.white).padding(.horizontal,10).padding(.top,-90)
                          
                         
                        
                        
                        
                        Text(switchBetweenCards.typeInPassw).padding(7).padding(7).foregroundColor(Color(.white)).animatableFonts(size: 20, weight: .heavy, design: .default).frame(width: 268,height:39, alignment: .topLeading).cornerRadius(20)
                        
                        
                        SecureField("", text: $passwordInput)
                            .frame(width:240,height:40).blur(radius: 10).background(.white).padding(.top,10)
                    }}}.padding(.top,40).shadow(color:Color(.black).opacity(0.4),radius:3,x:5, y: 3)
            ZStack{
               
               
            }

            
            
        }.padding().frame(width: 330,height:450 , alignment: .topLeading).background(Color("card3.dark")
                                                                                
        ).blendMode(.hardLight).border(.black).cornerRadius(20).shadow(color: SwiftUI.Color(.black), radius: 10, x: 10, y: -5)
    }
}


protocol loginSignAccount{
    var loginIn:String {get}
    var signeAccount:String {get}
    
    func loginAccountStrings()
    func createAccountStrings()
        
    
}

struct LoginSigneAccount:loginSignAccount{
    @Binding var loginName: String
    @State var  createName: String
    @State var  createEmail: String
    @State var  createPassword: String

    var loginIn:String{
        
        return "\(loginNameType)\(typeInPassw)"
        
    }
    var userName : String{
        return "\($loginName)"
    }
    var signeAccount: String{
        return "\(createAccountName)\(createEmailAccount)\(createPassword)"
    }
    
   
    
    func loginAccountStrings(){
        var loginNameTyp : String = "Type in usernamne"
    //    var loginNameEdeting :String = loginName
        var typeInPassw : String = "Type in password"

        
        
    }
   func createAccountStrings(){
      
       var createAccountName : String = "Choose you username"
       var createNameEdeting: String = createName
       var createEmailAccount : String = "Type in your email"
       var createEmailEdeting: String = createEmail
       var createPasswordString : String = "Type in usernamne"
       
       var createPasswordEdeting : String = createPassword
        
    
    }
    
    var loginNameType : String = "Type in usernamne"
 //   var loginNameEdeting :String

    var typeInPassw : String = "Type in password"
    
    var createAccountName : String = "Choose your username"
    var createEmailAccount : String = "Type in your email"
    var createPasswordString : String = "Choose a password"


      
   // var userNameIs : String = userName
  
  
  
  
    
   
                
      
  
    
}

extension loginSignAccount {
    func loginAccountStrings() {
        var loginName : String = "Type in usernamne"
        var typeInPassw : String = "Type in password"

    }
    func createAccountStrings(){
        var createAccountName : String = "Choose you username"
        var createEmailAccount : String = "Type in your email"
        var createPassword : String = "Type in usernamne"
         

    }
    
}

struct ButtonCreateUser: View {
    
  //  func AnyShape(Shape:any ShapeStyle,_: ShapeStyle) -> AnyShape{
        
     // let circle =  Circle.border((cgColor: Color("card1") as! CGColor), width:CGFloat(3) as! AnyShape)
      
    

    @State var showCreateAcount: Bool

    var body:  some View {
        ZStack{  Button(action: {showCreateAcount.toggle()
            print("test3")}, label: {Text("Create an account").foregroundColor(.black).animatableFonts(size: 16, weight: .semibold, design: .rounded).frame(width: 80, height: 70, alignment: .trailing).background(Color(.systemPurple)).cornerRadius(50).padding(.top,80).onTapGesture{showCreateAcount.toggle()}}) .padding(.bottom,50).padding(.bottom,50)
                .padding(.horizontal,40).background(.clear.opacity(0.6)).padding().frame(width: 80, height: 0, alignment: .trailing)
        }.padding(.bottom,20).blendMode(.hardLight ).shadow(color:Color(.black).opacity(0.2), radius: 4,x:4,y:4)
    }
}
