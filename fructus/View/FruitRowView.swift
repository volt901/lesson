//
//  FruitRowView.swift
//  fructus
//
//  Created by Владимир Ширяев on 16.08.2021.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 90, alignment: .center)
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient (gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .bold()
                Text (fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }//: HStack
    }
}

// MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            . padding()
    }
}
