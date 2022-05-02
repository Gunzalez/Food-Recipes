//
//  ListView.swift
//  mamaput
//
//  Created by Ségun Konibire on 25/04/2022.
//

import SwiftUI

struct RecipesListView: View {
    
    @State private var allreceipies = [Recipe]()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                allreceipies = JSONFileManager.load("recipes.json")
                print(allreceipies)
            }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
