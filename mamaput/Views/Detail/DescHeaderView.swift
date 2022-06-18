//
//  DescHeaderView.swift
//  mamaput
//
//  Created by Ségun Konibire on 18/06/2022.
//

import SwiftUI

struct DescHeaderView: View {
    @Binding var stepsShowing: Bool
    var recipe: Recipe
    var body: some View {
        VStack {
            Text(recipe.name)
                .font(.title2)
            
            Text("\(recipe.cookTime) | \(recipe.servings)").foregroundColor(.secondary)
            
            Picker("", selection: $stepsShowing){
                Text("Ingredients").tag(false)
                Text("Steps").tag(true)
            }.labelsHidden().pickerStyle(.segmented)
        }
    }
}

struct DescHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DescHeaderView(stepsShowing: .constant(true), recipe: Recipe.sampleData[1])
    }
}
