//
//  Movie.swift
//  Netflix Clone
//
//  Created by Anıl Bürcü on 5.07.2023.
//

import Foundation

struct TrendingMoviesResponse:Codable {
    let results:[Movie]
}

struct Movie:Codable {
    let id: Int
    let media_type: String?
    let original_name:String?
    let original_title:String?
    let poster_path:String?
    let overview:String?
    let vote_average:Double
    let vote_count:Int
    let release_date:String?
    
}












/*
 
 
         {
     adult = 0;
     "backdrop_path" = "/tTfnd2VrlaZJSBD9HUbtSF3CqPJ.jpg";
     "genre_ids" =             (
         35
     );
     id = 346698;
     "media_type" = movie;
     "original_language" = en;
     "original_title" = Barbie;
     overview = "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.";
     popularity = "449.244";
     "poster_path" = "/cgYg04miVQUAG2FKk3amSnnHzOp.jpg";
     "release_date" = "2023-07-19";
     title = Barbie;
     video = 0;
     "vote_average" = 0;
     "vote_count" = 0;
 },
 
 */
