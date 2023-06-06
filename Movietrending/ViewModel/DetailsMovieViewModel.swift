//
//  DatailsMovieViewModel.swift
//  Movietrending
//
//  Created by Senanur Korkmaz on 28.05.2023.
//

import Foundation

class DetailsMovieViewModel{
    
    var movie: Movie
    var movieIamge: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        self.movieID = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieIamge = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL?{
        URL(string: "\(NetworkConstant.shared.imageServerAdress)\(imageCode)")
    }
}
