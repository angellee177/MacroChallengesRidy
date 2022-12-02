//
//  ContentView.swift
//  HKTry1
//
//  Created by Muhammad Tafani Rabbani on 29/11/22.
//

import SwiftUI
import HealthKit

struct CobaCobaView: View {
     @StateObject var vmModel = VmForDashboard()
     var body: some View {
         VStack(spacing:20 ){
             if vmModel.lastTimeSleep != nil{
                 Text("HR Analysis")
                     .onTapGesture {
                         vmModel.fetchHRFromHealthKit()
                    }
             }
         }
    }
}

struct CobaCobaView_Previews: PreviewProvider {
    static var previews: some View {
        CobaCobaView()
    }
}
