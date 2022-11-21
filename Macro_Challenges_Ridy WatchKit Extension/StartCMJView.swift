//
//  StartCMJView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct StartCMJView: View {
    var body: some View {
        ZStack{
            NavigationLink(destination: CMJCountDownView()){
                Circle()
                    .strokeBorder(Color("Color1"),lineWidth: 14)
                    .background(Circle().foregroundColor(Color.black))
                    .frame(width: 162, height: 162)
            }.contentShape(Circle())
            
            Text("Ready?")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color("Color1"))
        }
    }
}

struct StartCMJView_Previews: PreviewProvider {
    static var previews: some View {
        StartCMJView()
    }
}
