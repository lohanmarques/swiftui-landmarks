//
//  NotificationView.swift
//  watch-landmarks Extension
//
//  Created by Lohan Marques on 18/01/21.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark = landmark {
                CircleImage(image: landmark.image.resizable())
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You're within 5 miles of one of your favorites landmarks")
                .font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()
            NotificationView(title: "Turtle Rock",
                             message: "You're within 5 miles of Turtle Rock",
                             landmark: ModelData().landmarks[0])
        }
    }
}
