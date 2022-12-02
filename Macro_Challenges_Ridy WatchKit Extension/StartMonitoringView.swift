//
//  StartMonitoringView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 29/11/22.
//

import SwiftUI

struct StartMonitoringView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("button pressed")
                
            }) {
                Image("start")
                    .resizable()
                    .frame(width: 74, height: 74)
            }
            Spacer()
                .frame(height: 26)
            Text("Press to Start Monitoring")
                .fontWeight(.medium)
                .frame(width: 130, height: 44)
                .multilineTextAlignment(.center)
            
        }
    }
}

struct StartMonitoringView_Previews: PreviewProvider {
    static var previews: some View {
        StartMonitoringView()
    }
}
