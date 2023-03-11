//
//  ContentView.swift
//  Restart
//
//  Created by 小路宏幸 on 2023/02/28.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.4), value: isOnboardingViewActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
