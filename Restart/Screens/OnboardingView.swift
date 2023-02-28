//
//  OnboardingView.swift
//  Restart
//
//  Created by 小路宏幸 on 2023/02/28.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding").font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        } //: VSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
