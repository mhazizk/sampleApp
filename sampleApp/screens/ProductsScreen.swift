//
//  ProductsScreen.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI

struct ProductsScreen : View {
    @State var data = [ProductType]()
    @State var alertToggle = false
    @State var errorMessage = ""
    
     let url = URL(string: urlConstants)!
    
     func startFetch() {
        URLSession.shared.fetchData(at: url) { result in
            switch result {
            case .success(let fetched):
                data = fetched.products
            case .failure(let error):
                alertToggle = true
                errorMessage = error.localizedDescription
            }
        }
    }
    
    var body: some View {
        VStack{
            Text("Products")
            CustomList(products: data)
            Divider().frame(width: 0)
        } .onAppear(perform: startFetch)
    }
}


struct ProductsScreen_Preview : PreviewProvider {
    static var previews : some View {
        ProductsScreen()
    }
}
