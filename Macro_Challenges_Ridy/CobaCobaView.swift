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
            if let date = vmModel.lastTimeSleep{
                Text("last sleep date \(date)")
                    .font(.title)
            }
            
            if let val = vmModel.myHR{
                Text("my current HR \(val)")
                    .font(.title)
            }
            
                
            Text("ask for request")
              
            
            Text("Sleep Analysis")
                .onTapGesture {
                    vmModel.fetchLastSleep()
                }
            
            Text("HR Analysis")
                .onTapGesture {
                    vmModel.fetchHRFromHealthKit()
                }
                
        }
    }
}

struct CobaCobaView_Previews: PreviewProvider {
    static var previews: some View {
        CobaCobaView()
    }
}
