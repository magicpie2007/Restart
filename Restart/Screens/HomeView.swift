//
//  HomeView.swift
//  Restart
//
//  Created by 小路宏幸 on 2023/02/28.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Home").font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }){
                Text("Restart")
            }
        } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
