//
//  MainScreen.swift
//  sampleApp
//
//  Created by Haziz on 17/04/23.
//

import Foundation
import SwiftUI

struct MainScreen: View {
    @State private var data = [ProductType]()
    @State private var alertToggle = false
    @State private var errorMessage = ""
    
    private let url = URL(string: "https://dummyjson.com/products")!
    
    private func startFetch() {
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
        ZStack {
            Rectangle().fill(Color.teal).ignoresSafeArea().zIndex(-1)
            VStack {
                Header()
                CustomButton(title: "Enter") {
                    startFetch()
                }
                CustomList(products: data)
            }
        }
        .alert(isPresented: $alertToggle) {
            Alert(
                title: Text("Error"),
                message: Text(errorMessage),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}



struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
