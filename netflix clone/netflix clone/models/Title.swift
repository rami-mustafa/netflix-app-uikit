

import Foundation


struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/**
 adult = 0;
 "backdrop_path" = "/uPcN7Ra6AJvmTn432XDohDed4uv.jpg";
 "genre_ids" =             (
     28,
     18,
     10752
 );
 id = 1076487;
 "media_type" = movie;
 "original_language" = en;
 "original_title" = "Warhorse One";
 overview = "A gunned down Navy SEAL Master Chief must guide a child to safety through a gauntlet of hostile Taliban insurgents and survive the brutal Afghanistan wilderness.";
 popularity = "19.906";
 "poster_path" = "/jP2ik17jvKiV5sGEknMFbZv7WAe.jpg";
 "release_date" = "2023-06-30";
 title = "Warhorse One";
 video = 0;
 "vote_average" = 0;
 "vote_count" = 0;
 
 
 
 
 */
