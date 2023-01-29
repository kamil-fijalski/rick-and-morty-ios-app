//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Kamil Fijalski on 29/01/2023.
//

import Foundation

@frozen enum RMCharacterStatus: String, Codable {
    case dead = "Dead"
    case alive = "Alive"
    case unknown = "unknown"
}
