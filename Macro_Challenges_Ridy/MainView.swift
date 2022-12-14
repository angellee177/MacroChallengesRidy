//
//  MainView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 28/11/22.
//

import SwiftUI

struct MainView: View {
//    @AppStorage("shouldShowOnBoarding") var shouldShowOnBoarding: Bool = true
    @State var shouldShowOnBoarding: Bool = true

    var body: some View {
        NavigationView{
            TabView{
                DashboardView()
                    .tabItem {
                        Label("Riding", systemImage: "figure.wave")
                    }
                HistoryView()
                    .tabItem {
                        Label("History", systemImage: "heart.text.square")
                    }
            }
            .accentColor(Color("Color6"))
            .edgesIgnoringSafeArea(.bottom)
        }
        .environmentObject(NavigationDahsboard())
        .fullScreenCover(isPresented: $shouldShowOnBoarding, content: { OnBoardingView(shouldShowOnBoarding: $shouldShowOnBoarding)
            
        })
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
