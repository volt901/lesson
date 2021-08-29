//
//  OnboardingView.swift
//  fructus
//
//  Created by Владимир Ширяев on 13.08.2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } // :LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
