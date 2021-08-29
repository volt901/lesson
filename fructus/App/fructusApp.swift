//
//  fructusApp.swift
//  fructus
//
//  Created by Владимир Ширяев on 12.08.2021.
//

import SwiftUI

@main
struct fructusApp: App {
    @AppStorage("_isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding == true {
                //ContentView()
                OnboardingView()
            } else {
                ContentView()
                //OnboardingView()
            }
        }
    }
}
