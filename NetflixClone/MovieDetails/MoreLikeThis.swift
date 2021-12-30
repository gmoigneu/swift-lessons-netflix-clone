//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/29/21.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    Button(action: {
                        //
                    }, label: {
                        StandardHomeMovie(movie: movies[index])                    
                    }).buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
