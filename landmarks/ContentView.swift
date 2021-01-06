//
//  ContentView.swift
//  landmarks
//
//  Created by Lohan Marques on 05/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Rio de Janeiro")
                    .font(.title)
                
                HStack {
                    Text("Cidade Maravilhosa")
                        .font(.subheadline)
                    Spacer()
                    Text("Brasil")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("Sobre a Cidade")
                    .font(.title2)
                
                Text("...")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
