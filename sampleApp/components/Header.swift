//
//  Header.swift
//  sampleApp
//
//  Created by Haziz on 17/04/23.
//

import Foundation
import SwiftUI

func Header() -> some View {
    @State var headerTitle = "My App"
    return VStack {
        Text(headerTitle)
    }
}


struct Header_Preview : PreviewProvider {
    static var previews: some View {
        Header()
    }
}
