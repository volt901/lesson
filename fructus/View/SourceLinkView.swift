//
//  SourceLinkView.swift
//  fructus
//
//  Created by Владимир Ширяев on 21.08.2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL (string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
