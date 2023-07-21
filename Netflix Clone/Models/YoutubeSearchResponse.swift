//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Anıl Bürcü on 21.07.2023.
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
