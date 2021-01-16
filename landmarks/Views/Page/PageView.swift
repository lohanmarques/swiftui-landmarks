//
//  PageView.swift
//  landmarks
//
//  Created by Lohan Marques on 15/01/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    @State private var currentPage: Int = 0
    var pages: [Page]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(currentPage: $currentPage, numberOfPages: pages.count)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
