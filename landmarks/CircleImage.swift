//
//  CircleImage.swift
//  landmarks
//
//  Created by Lohan Marques on 05/01/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("rio-janeiro")
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
