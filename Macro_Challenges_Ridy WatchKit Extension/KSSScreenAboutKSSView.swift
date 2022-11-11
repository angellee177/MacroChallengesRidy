//
//  KSSScreenAboutKSSView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 10/11/22.
//

import SwiftUI

struct KSSScreenAboutKSSView: View {
    var body: some View {
        TabView{
            VStack(spacing: 11){
                Spacer()
                    .frame(height: 35)
                Text("You will now choose your KSS level.")
                    .fontWeight(.medium)
                    .frame(width: 170, height: 45)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("Swipe left for more information.")
                    .fontWeight(.medium)
                    .frame(width: 170, height: 45)
                    .multilineTextAlignment(.center)
                
                Button {
                    //print(selection)
                } label: {
                    Text("Let's Check!")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .buttonStyle(BorderedButtonStyle(tint: Color("Color1")))
            }
            ScrollView{
                VStack{
                    Text("Karolinska Sleepiness Scale is a subjective test designed to help people quickly report their sleepiness.")
                        .fontWeight(.medium)
                        .frame(width: 170, height: 125)
                        .multilineTextAlignment(.center)
                    Spacer()
                        .frame(height: 15)
                    
                    Divider()
                    Spacer()
                        .frame(height: 10)
                    Text("KSS Level 1")
                        .fontWeight(.bold)
                        .frame(width: 160, alignment: .leading)
                    Text("Extremely Alert")
                        .fontWeight(.medium)
                        .frame(width: 160, alignment: .leading)
                    Spacer()
                        .frame(height: 10)
                    Divider()
                }
            }
        }
    }
}

struct KSSScreenAboutKSSView_Previews: PreviewProvider {
    static var previews: some View {
        KSSScreenAboutKSSView()
    }
}
