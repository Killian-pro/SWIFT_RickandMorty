//
//  RMCharacter.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 08/09/2023.
//

import Foundation

struct RMCharacter: Codable
{
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species:String
    let type: String
    let gender: RMCharacterGender
    let origin:RMorigin
    let location:RMSingleLocation
    let image: String
    let episode:[String]
    let url: String
    let created:String
    
}

