//
//  HomeView.swift
//  NetflixClone
//
//  Created by Guillaume Moigneu on 12/27/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeViewModel()
    let screen = UIScreen.main.bounds
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtons()
                        .padding(.top, -15)
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1.0)
                    
                    // Movies Categories
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13")
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            })
                .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("Movies")
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("My List")
            })
                .buttonStyle(PlainButtonStyle())
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
