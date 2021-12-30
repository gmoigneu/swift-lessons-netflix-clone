//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/28/21.
//

import SwiftUI

struct RectangleButton: View {
    
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        }
        
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            RectangleButton(text: "Play", imageName: "play.fill") {
                print("Tapped")
            }
        }
    }
}
