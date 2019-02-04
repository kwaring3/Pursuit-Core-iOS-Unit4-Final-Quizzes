//
//  FavoriteModel.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


struct Favorite: Codable {
    let quizTitle: String
    let facts: [String]
    let createdAt: String
}
