//
//  TrailersView.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/29/21.
//

import SwiftUI
import Kingfisher

struct TrailersView: View {
    var trailers: [Trailer]
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack {
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                    HStack {
                        Text(trailer.name)
                            .font(.headline)
                        Spacer()
                    }.padding(.bottom, 10)
                }
            }
        }.foregroundColor(.white)
    }
}

struct TrailersView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TrailersView(trailers: exampleTrailers)
        }
    }
}
