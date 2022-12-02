//
//  OnBoardingView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 01/12/22.
//

import SwiftUI
struct OnBoardingView: View {
    @Binding var shouldShowOnBoarding: Bool
    
    var body: some View {
        TabView{
            PageView(
                title: "What is Ridy?",
                subtitle: "We help Riders by giving warnings about health factors that may affect humans’ riding capabilities ",
                imageName: "onboarding1",
                showDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding)
            
            PageView(
                title: "Thing to Remember",
                subtitle: "We’re not a medical diagnosis app that judge user's readiness",
                imageName: "onboarding2",
                showDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding)
            
            PageView(
                title: "Important Note",
                subtitle: "You should sync Ridy with Health App to start this pleasant experience!",
                imageName: "onboarding3",
                showDismissButton: true,
                shouldShowOnBoarding: $shouldShowOnBoarding)
        }
        .background(
            Image("Bg2")
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showDismissButton: Bool
    @Binding var shouldShowOnBoarding: Bool
    
    
    var body: some View {
        
        
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 131, height: 131)
                .padding()
            Spacer()
                .frame(height: 72)
            
            Text(title)
                .font(Font.system(size: 34, weight: .bold))
                .overlay {
                    LinearGradient(
                        colors: [Color("Color4"), Color("Color5")],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .mask(
                        Text(title)
                            .font(Font.system(size: 34, weight: .bold))
                            .multilineTextAlignment(.center)
                            .frame(width: 359, alignment: .center)
                    )
                }
                .frame(width: 359, alignment: .center)
            Spacer()
                .frame(height: 76)
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color("rectangleColor"))
                    .frame(width: 346, height: 106)
                    .cornerRadius(8)
                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                
                Text(subtitle)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width: 330, alignment: .center)
                    .multilineTextAlignment(.center)
            }
            Spacer()
                .frame(height: 160)
            
            if showDismissButton {
                Button(action: {
                    shouldShowOnBoarding.toggle()
                }, label: {
                    Text("Next")
                        .fontWeight(.bold)
                        .frame(width: 330)
                        .font(.title3)
                        .padding()
                        .foregroundColor(.black)
                        .background(LinearGradient(colors: [Color("Color4"), Color("Color5")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(15)
                })
            }
            Spacer()
                .frame(height: 40)
        }
    }
}


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(shouldShowOnBoarding: .constant(true))
    }
}
