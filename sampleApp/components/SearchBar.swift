//
//  SearchBar.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI


struct SearchBar : View {
    
    @Binding var query:String
    
    func startSearch() -> Void {
        return
    }
    
    var body: some View{
        VStack{
            HStack{
                TextField("Search Products",
                          text: $query)
                {
                    
                }
                .padding()
                .frame(height: 48)
                .autocorrectionDisabled()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 2)
                )
                Button(action: startSearch) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .padding()
                }
            }
            .padding(16)
        }
    }
}


struct SearchBar_Preview : PreviewProvider {
    
    static var previews : some View {
        @State var query:String = ""
        SearchBar(query: $query)
    }
}
