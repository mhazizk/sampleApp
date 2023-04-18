//
//  ProductDetails.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI

struct ProductDetailsScreen : View {
    var product : ProductType
    
    var body: some View{
        VStack{
            Image(product.thumbnail).frame(width: 100,height: 30)
            Text(product.title).fontWeight(Font.Weight.bold).font(Font.largeTitle)
            Text(String(product.price))
            Text("\(product.stock) pcs")
            Spacer()
        }
    }
}

struct ProductDetailsScreen_Previews : PreviewProvider {
    static var previews : some View {
        let product = ProductType(
            id: 1, title: "Nokia", description: "Hape", price: 10000, discountPercentage: 0.5, rating: 4.5, stock: 1, brand: "Nokia", category: "Phone", thumbnail: "", images: [""])
        ProductDetailsScreen(product: product)
    }
}
