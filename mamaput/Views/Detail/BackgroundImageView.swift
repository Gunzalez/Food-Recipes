//
//  BackgroundImage.swift
//  mamaput
//
//  Created by Ségun Konibire on 18/06/2022.
//

import SwiftUI

struct BackgroundImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .overlay(LinearGradient(colors: [.black.opacity(0.5), .clear, .black.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
    }
}


