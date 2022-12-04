//
//  CountDown.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 28/11/22.
//

import SwiftUI

struct CountDown: View {
    @State var countdownTimer = 20*60
    @State var timerRunning = true
    @Binding var cardState : MonitorinCardState
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .foregroundColor(Color("rectangleColor"))
                    .frame(width: 352, height: 160)
                    .cornerRadius(8)
                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                
                VStack{
                    Text("Monitoring your heart rate…")
                        .foregroundColor(.white)
                        .frame(width: 316, alignment: .leading)
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Please focus on the road")
                        .foregroundColor(.white)
                        .frame(width: 316, alignment: .leading)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 330, height: 46)
                            .foregroundColor(.purple)
                            .opacity(0.18)
                            .cornerRadius(8)
                        
                        Text("\(timeString(time: countdownTimer))")
                            .padding()
                            .onReceive(timer) { _ in
                                if countdownTimer > 0 && timerRunning {
                                    countdownTimer -= 1
                                } else {
                                    timerRunning = false
                                    //TODO: habis 20 menit ngapain
                                    cardState = .inactive
                                }
                                
                            }
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color("Color2"))
                    }
                }
            }
            
            
//            HStack(spacing:30) {
//                Button("Start") {
//                    timerRunning = true
//                }
//
//                Button("Reset") {
//                    countdownTimer = 20*60
//                }.foregroundColor(.red)
//            }
        }
    }
    
    func timeString(time: Int) -> String {
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i", minutes, seconds)
        }
}

struct CountDown_Previews: PreviewProvider {
    static var previews: some View {
        CountDown(cardState : .constant(MonitorinCardState.timer))
    }
}
