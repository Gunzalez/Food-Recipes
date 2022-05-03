//
//  BannerView.swift
//  mamaput
//
//  Created by Ségun Konibire on 03/05/2022.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        HStack {
            Text("🥗")
                .font(.system(size: 80))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("You have 20 recipes to try!")
                    .font(.body)
                    .foregroundColor(.black)
                
                Button("See receipes"){}
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in:
            RoundedRectangle(cornerRadius: 12))
//        .preferredColorScheme(.dark)
        
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
