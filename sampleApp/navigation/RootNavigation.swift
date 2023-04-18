//
//  RootNavigation.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI


struct RootNavigation: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    var body: some View {
        NavigationView {
                TabView {
                    ProductsScreen()
                        .tabItem {
                            Image(systemName: "building.2")
                            Text("Tab 1")
                        }
                    SearchScreen()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    FavoriteScreen()
                        .tabItem {
                            Image(systemName: "star")
                            Text("Favorite")
                        }
                }
        }
    }
}


struct RootNavigation_Previews: PreviewProvider {
    static var previews: some View {
        RootNavigation()
    }
}
