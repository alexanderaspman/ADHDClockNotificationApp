//
//  CubeRotationAnimation.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-28.
//

import SwiftUI
/*
struct CubeBlock: View {
    var color : Color
    var body: some View {
        Rectangle().fill(color).frame(width:100,height: 100,alignment: .center)
            .mask(Image("cube.png"))
            .overlay(Image("cube.png").opacity(0.5))
    }
}

enum AllCubes:CaseIterable{
    
   
    static var indexOffset: Int = 0
    
    case one,two,three
    
    var view : AnyView {
        switch self {
        case .one:
            return AnyView(CubeBlock(color:Color(.systemYellow)))
            
        case .two:
            return AnyView(CubeBlock(color:Color(.systemRed)))
            
        case .three:
            return AnyView(CubeBlock(color:Color(.systemMint)))
            
        default:
            return AnyView(EmptyView())
        }
    }
    
}

struct CubeSet: View {
    @State var allCubes = AllCubes.allCases
    @State var allIndices: [(CGFloat,CGFloat,Double,Bool)] = [
        (-80,30,6,true),
        (-40,20,3, false),
        (0,0 ,1, false),
        (40,20 ,6, true)
    ]
    @State var currentIndex:Int = 4
    
    func rotate(Index:Int) -> some View {
        let ClearPosition = allIndices[3]
        
       allIndices[3] = allIndices[currentIndex]
        allIndices[currentIndex] = ClearPosition
        
        currentIndex = currentIndex - 1
        
        if currentIndex == -1 {
            currentIndex = 2
        }
        
        return
    }
   
    var body : some View{
        ForEach(0..<allCubes.count){
            index in
            cube(index : index)
        }
    }
    .onAppear{
        
        withAnimation{
            rotate()
        }
    }
    
}

func cube(index:Int) -> some View {
    let offset = allIndices[index]
    return allBlock[index].view.offset(x: offset.0 , y: offeset.1)
        .zIndex(offset.2)
    
}

struct CubeRotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CubeRotationAnimation(color: Color)
    }
}
*/
