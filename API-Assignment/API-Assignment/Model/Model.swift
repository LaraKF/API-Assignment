//
//  Model.swift
//  API-Assignment
//
//  Created by Lara K on 09/11/1444 AH.
//

import Foundation

struct Model: Decodable {
   let id: Int
   let userId: Int
   let title: String
   let completed: Bool
}
