//
//  EpisodesView.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/30/21.
//

import SwiftUI
import Kingfisher

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack(spacing: 20) {
            // Season picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }).buttonStyle(PlainButtonStyle()).padding(.top, 20)
                       
                Spacer()
            }
            // Episodes list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        Button {
                            //
                        } label: {
                            VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                                .frame(width: 120, height: 80)
                                .clipped()
                            VStack(alignment: .leading, spacing: 5) {
                                Text("\(episode.episodeNumber). \(episode.name)")
                                    .multilineTextAlignment(.leading)
                                Text("\(episode.length)m")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "arrow.down.to.line.alt")
                                .font(.system(size: 20))
                        }
                        
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)

                
            }
            
            Spacer()
        }.foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: exampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
