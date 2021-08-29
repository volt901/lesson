//
//  FruitDetailView.swift
//  fructus
//
//  Created by Владимир Ширяев on 21.08.2021.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack (alignment: .center, spacing: 20){
                    // HEADER
                    
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                        // TTITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientView(fruit: fruit)
                        
                        
                        // SUBHEADLINE
                        Text("Learn more about\(fruit.title)".uppercased())
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                            .multilineTextAlignment(.leading)
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.leading)
                    
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame (maxWidth: 640, alignment: .center)
                }//:VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }// : SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATOR
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
