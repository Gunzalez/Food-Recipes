//
//  Onboarding.swift
//  mamaput
//
//  Created by Ségun Konibire on 25/04/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var showOnboaring: Bool
    
    var steps = AppOnboarding.data
    
    @State private var selection = 0
    
    var body: some View {
        VStack{
            TabView(selection: $selection) {
                ForEach(0..<steps.count, id:\.self) { idx in
                    VStack(spacing: 0){
                        Spacer()
                        Text(steps[idx].title)
                            .padding()
                            .font(.largeTitle)
                        
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 1) // A thin faded line
                        
                        VStack(alignment: .leading){
                            LottieView(name: steps[idx].animationName)
                                .scaledToFit()
                        }
                        
                        Text(steps[idx].detail)
                            .padding()
                        Spacer()
                        
                    }.tag(idx)
                }
            }.tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack {
                Spacer()
                Button {
                    withAnimation {
                        if selection < steps.count - 1 {
                            selection += 1
                        } else {
                            showOnboaring.toggle()
                        }
                    }
                } label: {
                    if selection == steps.count - 1 {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "chevron.right.circle")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .foregroundColor(.primary)
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboaring: .constant(true))
    }
}
