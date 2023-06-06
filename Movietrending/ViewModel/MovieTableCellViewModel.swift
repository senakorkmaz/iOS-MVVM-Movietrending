//
//  MovieTableCellViewModel.swift
//  Movietrending
//
//  Created by Senanur Korkmaz on 23.05.2023.
//

import Foundation

class MovieTableCellViewModel{
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageURL: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.rating = "\(movie.voteAverage)"
        self.imageURL = makeImageURL(movie.posterPath)
    }
    
    private func makeImageURL(_ imageURL: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAdress)\(imageURL)")
        
    }
}
