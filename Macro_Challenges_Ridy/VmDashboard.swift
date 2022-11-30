//
//  VmDashboard.swift
//  Macro_Challenges_Ridy
//
//  Created by Angel Ria Purnamasari on 29/11/22.
//

import Foundation
import HealthKit

class VmForDashboard:ObservableObject{
    
    @Published var lastTimeSleep : Date?
    
    @Published var myHR : Double?
    
    init(){
        
    }
    
    func fetchLastSleep(){
        HealthManager.shared.fetchSleep(){ item in
            DispatchQueue.main.async {
                self.lastTimeSleep = item.startDate
            }
            
        }
    }
    
    func fetchHRFromHealthKit(){
        HealthManager.shared.fetchHR { item in
            let heartRateUnit:HKUnit = HKUnit(from: "count/min")
            DispatchQueue.main.async {
                
                self.myHR = item.quantity.doubleValue(for: heartRateUnit)
            }
        }
    }
}
