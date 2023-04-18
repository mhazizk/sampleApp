//
//  types.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation


struct ProductType:Decodable,Identifiable {
    var id: Int
    var title: String
    var description: String
    var price: Int
    var discountPercentage: Float
    var rating: Float
    var stock: Int
    var brand: String
    var category: String
    var thumbnail: String
    var images: [String]
    
}
