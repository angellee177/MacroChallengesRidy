//
//  CountDown.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 28/11/22.
//

import SwiftUI

struct CountDown: View {
    @State var timeRemaining = 20*60
    
    let timer = Timer.publish(every: 1, on: .main   , in: .common).autoconnect()
    
    var body: some View {
        Text("\(timeString(time: timeRemaining))")
            .font(.system(size: 60))
            .frame(height: 80.0)
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.black)
            .onReceive(timer){ _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }else{
                    self.timer.upstream.connect().cancel()
                }
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
        CountDown()
    }
}
