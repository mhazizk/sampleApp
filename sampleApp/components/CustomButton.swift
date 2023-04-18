//
//  CustomButton.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation
import SwiftUI

func CustomButton(title:String, onPress: @escaping ()->Void) -> some View {
    return Button(action: onPress) {
        Text(title)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(16)
    }
}


//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton(title: "Hello"){
//            print("Pressed !")
//        }
//    }
//}

