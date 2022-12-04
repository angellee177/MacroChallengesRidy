//
//  BeforeRidingView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 29/11/22.
//

import SwiftUI

struct BeforeRidingView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                Text("As usual, RIDY will monitor my Heart Rate for 20 minute after I start moving and will notify the result.")
                    .fontWeight(.medium)
                    .frame(width: 150)
                    .multilineTextAlignment(.leading)
                
                Text("I will briefly stop in a safe place to see the notification.")
                    .fontWeight(.medium)
                    .frame(width: 150)
                    .multilineTextAlignment(.leading)
                
                NavigationLink(destination: StartMonitoringView()){
                    Text("Let's Go!")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .background(LinearGradient(gradient: Gradient(colors: [Color("Color4"), Color("Color5")]), startPoint: .leading, endPoint: .trailing))
                .mask(RoundedRectangle(cornerRadius: 24))
            }
        }

    }
}

struct BeforeRidingView_Previews: PreviewProvider {
    static var previews: some View {
        BeforeRidingView()
    }
}
