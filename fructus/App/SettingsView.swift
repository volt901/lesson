//
//  SettingsView.swift
//  fructus
//
//  Created by Владимир Ширяев on 22.08.2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("_isOnboarding") var isOnboarding: Bool = false
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
                    // MARK: - SECTION 1
                    GroupBox (
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack() {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .leading)
                                .cornerRadius(9.0)
                          //Spacer(minLength: 0)
                            Text("Test info programm")
                                .font(.footnote)
                                //.multilineTextAlignment(.trailing)
                                .padding(.leading)
                              
                        }
                        
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox (
                        label: SettingsLabelView(labelText: "Customizatoin", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("Would you like to restart ")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding)
                        {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .bold()
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .bold()
                                    .foregroundColor(.secondary)
                            }

                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                        
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox (label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                    SettingRowView(name: "Developer", content: "Jone / Jane")
                    SettingRowView(name: "Designer", content: "Rober Petras")
                    SettingRowView(name: "Compatibility", content: "iOS 14")
                    SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                    }

                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        }))
                .padding()
            } // : Scroll
        }
        .padding(.leading)// : Navigator
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            
    }
}
