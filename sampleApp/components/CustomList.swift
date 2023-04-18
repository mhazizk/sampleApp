//
//  List.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI


func CustomList(products:[ProductType]) -> some View {

    return List(products) { product in
        NavigationLink(destination: ProductDetailsScreen(product: product)) {
            HStack{
                Text(product.title)
            }
        }
        
    }
    
}
