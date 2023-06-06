//
//  NetworkConstant.swift
//  Movietrending
//
//  Created by Senanur Korkmaz on 21.05.2023.
//

import Foundation

class NetworkConstant{
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init(){
        
    }
    
    public var apiKey: String {
        get{
            return ""
        }
    }
    
    public var apiAuth: String {
        get{
            return ""
        }
    }
    
    public var serverAdress: String{
        get{
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAdress: String{
        get{
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
}
