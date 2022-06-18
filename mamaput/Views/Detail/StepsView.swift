//
//  StepsView.swift
//  mamaput
//
//  Created by Ségun Konibire on 18/06/2022.
//

import SwiftUI

struct StepsView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline){
                Text("Steps").font(.title2).padding(.top, 40)
                Spacer()
                Text("\(recipe.steps.count) steps").font(.callout).foregroundColor(.secondary)
            }
            ForEach(recipe.steps, id: \.self) { step in
                HStack(alignment: .center) {
                    Text("\(step)")
                }
                .padding(.vertical)
            }
        }
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView(recipe: Recipe.sampleData[1])
    }
}
