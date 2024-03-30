//
//  YoutubeSearchResponse.swift
//  netflix clone
//
//  Created by Rami Mustafa on 30.03.24.
//




import Foundation



struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
