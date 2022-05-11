//
//  ListView.swift
//  mamaput
//
//  Created by Ségun Konibire on 25/04/2022.
//

import SwiftUI

struct RecipesListView: View {
    
    @State private var searchText = ""
    @State private var allreceipies = [Recipe]()
    
    var recipes: [Recipe] {
        if(searchText.isEmpty){
            return allreceipies
        }
        
        return allreceipies.filter({ $0.name.lowercased().contains(searchText.lowercased()) })
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchView(searchText: $searchText)
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading, spacing: 10){
                        BannerView()
                        ForEach(recipes, id: \.self) { recipe in
                            NavigationLink(destination: Text(recipe.name)){
                                RecipeTileView(recipe: recipe)
                            }
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .animation(.easeIn, value: searchText)
            .padding(.horizontal)
            .navigationTitle("Mama Put")
            
        }
        .onAppear {
            allreceipies = JSONFileManager.load("recipes.json")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
