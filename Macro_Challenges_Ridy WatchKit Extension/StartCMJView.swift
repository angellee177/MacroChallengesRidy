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
            Circle()
                .strokeBorder(Color("Color1"),lineWidth: 14)
                .background(Circle().foregroundColor(Color.black))
            Text("Ready?")
                .font(.title3)
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
