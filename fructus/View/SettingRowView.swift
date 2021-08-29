//
//  SettingRowView.swift
//  fructus
//
//  Created by Владимир Ширяев on 24.08.2021.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link (linkLabel!, destination: URL (string:"http://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
            .padding(.vertical,20)
        }
            
    }
}


// MARK: - PREVIEW
struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Jone / Jane").previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
