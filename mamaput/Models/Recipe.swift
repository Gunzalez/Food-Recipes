//
//  Recipe.swift
//  mamaput
//
//  Created by Ségun Konibire on 26/04/2022.
//

import Foundation

struct Recipe: Hashable, Codable {
    var name: String
    var ingredients: [Ingredient]
    var cookTime: String
    var servings: String
    var steps: [String]
    var imageName: String
}


extension Recipe {
    static var sampleData: [Recipe] {
        [
            Recipe(name: "Pounded Yam",
               ingredients: [
                    Ingredient(quantity: "some", name: "water", emoji: "w"),
                    Ingredient(quantity: "2 cups", name: "yam flour", emoji: "f"),
               ],
               cookTime: "5 mins",
               servings: "1",
               steps: [
                    String("1. boil the water"),
                    String("2. pour the flour into boiling water"),
                    String("3. stir the flour until thick"),
               ],
               imageName: "y"),
            Recipe(name: "Amala",
               ingredients: [
                    Ingredient(quantity: "1 litre", name: "water", emoji: "w"),
                    Ingredient(quantity: "1.25 oz", name: "amala flour", emoji: "f"),
               ],
               cookTime: "5 mins",
               servings: "1",
               steps: [
                    String("1. boil the water"),
                    String("2. pour the Amala flour into boiling water"),
                    String("3. stir the flour until nice and smooth in thickness"),
                    String("4. serve while hot"),
                    String("5. eat with stew"),
               ],
               imageName: "y"),
        ]
    }
}
