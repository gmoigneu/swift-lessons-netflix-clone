//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/27/21.
//

import Foundation
import SwiftUI
import simd


let episode1 = Episode(
    name: "Lorem ipsum dolor sit amet",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/200?1",
    description: "Morbi libero diam, imperdiet ac efficitur in, molestie a purus. Aliquam venenatis urna purus. Nulla sollicitudin ante neque, sed luctus neque iaculis a.",
    length: 62,
    videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
)

let episode2 = Episode(
    name: "Consectetur adipiscing elit",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/200?2",
    description: "Morbi libero diam, imperdiet ac efficitur in, molestie a purus. Aliquam venenatis urna purus. Nulla sollicitudin ante neque, sed luctus neque iaculis a.",
    length: 62,
    videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
)

let episode3 = Episode(
    name: "Nam efficitur vehicula bibendum",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/200?3",
    description: "Morbi libero diam, imperdiet ac efficitur in, molestie a purus. Aliquam venenatis urna purus. Nulla sollicitudin ante neque, sed luctus neque iaculis a.",
    length: 62,
    videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
)

let episode4 = Episode(
    name: "Curabitur lobortis",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/200?4",
    description: "Morbi libero diam, imperdiet ac efficitur in, molestie a purus. Aliquam venenatis urna purus. Nulla sollicitudin ante neque, sed luctus neque iaculis a.",
    length: 62,
    videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
)

let episode5 = Episode(
    name: "Sed facilisis diam",
    season: 3,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/200?5",
    description: "Morbi libero diam, imperdiet ac efficitur in, molestie a purus. Aliquam venenatis urna purus. Nulla sollicitudin ante neque, sed luctus neque iaculis a.",
    length: 62,
    videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
)

let exampleEpisodes = [episode1, episode2, episode3, episode4, episode5]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?1")!,
    year: 2021, rating: "TV-MA",
    numberOfSeasons: 3,
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    episodes: exampleEpisodes,
    trailers: exampleTrailers
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?2")!,
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    promoHeadline: "Watch Season 2 now!",
    trailers: exampleTrailers
    
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?3")!,
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 3,
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    promoHeadline: "Watch Season 3 now!",
    trailers: exampleTrailers
    
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?4")!,
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 2,
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    trailers: exampleTrailers
    
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?5")!,
    year: 2021,
    rating: "TV-MA",
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    trailers: exampleTrailers
    
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?6")!,
    year: 2021,
    rating: "TV-MA",
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    promoHeadline: "Best movie ever!",
    trailers: exampleTrailers
    
)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Witcher",
    thumbnailURL: URL(string: "https://picsum.photos/200/300?7")!,
    year: 2021,
    rating: "TV-MA",
    categories: ["Dystopian", "Exciting", "Suspensful", "Sci-Fi TV"],
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Warner Bros.",
    cast: "George Clooney, Scarlett Johanson",
    promoHeadline: "Best movie ever!",
    trailers: exampleTrailers
    
)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

var exampleMoviesString: [String] {
    return ["Test1", "Test2"]
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "A new beginning", description: "Some random description", season: 2, episode: 1)

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
let exampleImageURL = URL(string: "https://picsum.photos/600/400?8")
let exampleImageURL1 = URL(string: "https://picsum.photos/600/400?8")
let exampleImageURL2 = URL(string: "https://picsum.photos/600/400?9")
let exampleImageURL3 = URL(string: "https://picsum.photos/600/400?10")

let exampleTrailer1 = Trailer(name: "Season 1 trailer", videoURL: exampleVideoURL!, thumbnailImageURL: exampleImageURL1!)
let exampleTrailer2 = Trailer(name: "Season 2 trailer", videoURL: exampleVideoURL!, thumbnailImageURL: exampleImageURL2!)
let exampleTrailer3 = Trailer(name: "Season 3 trailer", videoURL: exampleVideoURL!, thumbnailImageURL: exampleImageURL3!)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)],
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
