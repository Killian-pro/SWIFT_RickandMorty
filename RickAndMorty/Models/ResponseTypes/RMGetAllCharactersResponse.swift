//
//  RMGetAllCharactersResponse.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 08/09/2023.
//

import Foundation

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
