//
//  MovieDetails.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/28/21.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            // close
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                
                                .font(.system(size: 28))
                        }).buttonStyle(PlainButtonStyle())
                    }.padding(.horizontal, 22)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            StandardHomeMovie(movie: movie)
                                .frame(width: screen.width / 2.5)
                            
                            MovieInfoSubHeadline(movie: movie)
                            
                            if movie.promoHeadline != nil {
                                Text(movie.promoHeadline!)
                                    .bold()
                                    .font(.headline)
                            }
                            
                            RectangleButton(text: "Play", imageName: "play.fill", backgroundColor: .red, action: {
                                
                            })
                            
                            EpisodeInfo(movie: movie)
                            CastInfo(movie: movie)
                            
                            MovieActions()
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason).padding(.top, 20)
                            
                            
                        }.padding(.horizontal, 10)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {
                    Group {
                        Color.black.opacity(0.9)
                        VStack(spacing: 40) {
                            Spacer()
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                
                                Button {
                                    selectedSeason = season + 1
                                    showSeasonPicker = false
                                } label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                        .bold()
                                }

                            }
                            
                            Spacer()
                            
                            Button {
                                self.showSeasonPicker = false
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                            
                        }.foregroundColor(.white)
                            .padding(.bottom, 30)
                    }.edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: exampleMovie1)
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
            
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 5)
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
        }
    }
}

struct EpisodeInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}

struct MovieActions: View {
    var body: some View {
        HStack(spacing: 60) {
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                //
            }
            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                //
            }
            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                //
            }
            Spacer()
        }.padding(.leading, 20)
    }
}
