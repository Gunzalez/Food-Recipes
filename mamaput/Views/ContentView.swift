//
//  ContentView.swift
//  mamaput
//
//  Created by Ségun Konibire on 23/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOnboarding = true
    
    var body: some View {
        if showOnboarding {
            OnboardingView(showOnboaring: $showOnboarding)
        } else {
            RecipesListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
