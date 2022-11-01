//
//  RotatingCube.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-29.
//

import SwiftUI

struct CubeBlock: View {
    var color : Color
    var image =  #imageLiteral(resourceName: "cube.png")
    var body: some View {
        Rectangle().fill(color).frame(width:100,height: 100,alignment: .center)
       
            .mask(Image(uiImage: UIImage(cgImage: image as! CGImage) ))
            .overlay(Image(uiImage: image).opacity(0.5))
    }
}

struct RotatingCube_Previews: PreviewProvider {
    static var previews: some View {
        CubeBlock(color: Color(".systemRed"))
    }
}
