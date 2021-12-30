//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/27/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies.shuffled()
        movies["Stand-up comedy"] = exampleMovies.shuffled()
        movies["New releases"] = exampleMovies.shuffled()
        movies["Watch it again"] = exampleMovies.shuffled()
        movies["Sci-Fi movies"] = exampleMovies.shuffled()
    }
}
