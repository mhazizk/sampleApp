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
        Text(product.title)
        
    }
    
//    return VStack{
//        ForEach(products, id:\.id) {
//            product in
//            HStack(){
//                Text(String(describing: product.title))
//                    .padding()
//                Spacer()
//            }
//            .background(Color.teal)
//            .cornerRadius(16)
//            .padding(.horizontal, 16)
//        }
//    }
    
}

//struct List_Preview : PreviewProvider {
//    static var previews : some View {
//        List(array: [
//            {
//              "id": 1,
//              "title": "iPhone 9",
//              "description": "An apple mobile which is nothing like apple",
//              "price": 549,
//              "discountPercentage": 12.96,
//              "rating": 4.69,
//              "stock": 94,
//              "brand": "Apple",
//              "category": "smartphones",
//              "thumbnail": "...",
//              "images": ["...", "...", "..."]
//            }])
//    }
//}
