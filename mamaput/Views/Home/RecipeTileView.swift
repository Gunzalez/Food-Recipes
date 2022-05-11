//
//  RecipeTileView.swift
//  mamaput
//
//  Created by Ségun Konibire on 07/05/2022.
//

import SwiftUI

struct RecipeTileView: View {
    
    var recipe: Recipe
    
    @ViewBuilder
    private var recipeImage: some View {
        Image(recipe.imageName)
            .resizable()
            .scaledToFill()
            .overlay(LinearGradient(colors: [.black.opacity(0.5), .clear, .black.opacity(0.5)], startPoint: .top, endPoint: .bottomTrailing))
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 300)
//            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    @ViewBuilder
    private var recipeLabel: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 20){
                Text(recipe.name).font(.title).frame(alignment: .leading)
                Text("\(recipe.cookTime) | \(recipe.servings)")
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
        }
        .padding()
        .background(.thinMaterial, in:
            RoundedRectangle(cornerRadius: 16))
    }
    
    var body: some View {
        ZStack {
            recipeImage
            VStack(alignment: .leading) {
                Text("Dinner")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.thinMaterial)
                    .clipShape(Capsule())
                Spacer()
                recipeLabel
            }
            .padding()
        }
//        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct RecipeTileView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTileView(recipe: Recipe.sampleData[1])
    }
}
