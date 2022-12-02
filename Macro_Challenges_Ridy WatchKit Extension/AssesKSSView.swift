//
//  StartCMJView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct AssesKSSView: View {
    var body: some View {
        ZStack{
            Circle()
                .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color("Color4"), Color("Color5")]), startPoint: .leading, endPoint: .trailing) ,lineWidth: 14)
                .background(Circle().foregroundColor(Color.black))
                .frame(width: 162, height: 162)
            
            
            Text("Assessing \ndata..")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .frame(width: 142, height: 62, alignment: .center)
                .multilineTextAlignment(.center)
        }
    }
}

struct AssesKSSView_Previews: PreviewProvider {
    static var previews: some View {
        AssesKSSView()
    }
}
