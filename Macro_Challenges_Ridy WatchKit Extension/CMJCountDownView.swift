//
//  CMJCountDownView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct CMJCountDownView: View {
    @State var countDownTimer = 5
    @State var timerRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            NavigationLink(destination: SuggastionSummaryView()){
                Circle()
                    .strokeBorder(Color("Color1"),lineWidth: 14)
                    .background(Circle().foregroundColor(Color.black))
                    .frame(width: 162, height: 162)
            }.contentShape(Circle())

            
            Text("\(countDownTimer)")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .foregroundColor(Color("Color1"))
        }
    }
}

struct CMJCountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CMJCountDownView()
    }
}
