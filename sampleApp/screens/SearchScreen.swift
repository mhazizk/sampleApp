//
//  SearchScreen.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI


struct SearchScreen : View {
    
    @State var query:String = ""
    
    
    func startSearch() -> Void {
        return
    }
    
    var body: some View{
        VStack{
            SearchBar(query: $query)
            Spacer()
        }
    }
}


struct SearchScreen_Preview : PreviewProvider {
    
    static var previews : some View {
        SearchScreen()
    }
}
