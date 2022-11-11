//
//  CMJCountDownView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct CMJCountDownView: View {
    var body: some View {
        ZStack{
            Circle()
                .strokeBorder(Color("Color1"),lineWidth: 14)
                .background(Circle().foregroundColor(Color.black))
            Text("5")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("Color1"))
        }
    }
}

struct CMJCountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CMJCountDownView()
    }
}
