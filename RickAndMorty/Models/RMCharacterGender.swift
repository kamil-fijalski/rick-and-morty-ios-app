//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Kamil Fijalski on 29/01/2023.
//

import Foundation

@frozen enum RMCharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
