//
//  allProductsFromAPIType.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation


struct allProductsFromAPIType : Decodable {
    var products : [ProductType]
    var total:Int
    var skip:Int
    var limit:Int
}
