//
//  CMJPhaseView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct CMJPhaseView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Jump now!!")
                .fontWeight(.medium)
            Text("First Jump")
                .fontWeight(.medium)
        }
    }
}

struct CMJPhaseView_Previews: PreviewProvider {
    static var previews: some View {
        CMJPhaseView()
    }
}
