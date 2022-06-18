//
//  RecipeByView.swift
//  mamaput
//
//  Created by Ségun Konibire on 18/06/2022.
//

import SwiftUI

struct RecipeByView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Recipe by:")
                    .foregroundColor(.secondary)
                    .font(.body)
                    .fontWeight(.light)
                
                Text("Segun Konibire")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.leading, 10)
            }
            .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
            .padding()
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct RecipeByView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeByView()
    }
}
