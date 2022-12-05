//
//  FatigueLevelEquation.swift
//  Macro_Challenges_Ridy
//
//  Created by Jauza Krito on 05/12/22.
//

import Foundation

var age: Double = 30
var daytimeMeanHR: Double = 90
var meanHR: Double = 89

var sleepyLevelEstimation: Double {
    let daytimeHRBeforeRiding = daytimeMeanHR * 0.7
    let drivingHRMaxEstimation = (220 - age) * 0.5
    
    let sleepyLevelByDaytimeHR = daytimeHRBeforeRiding * 0.8
    let sleepyLevelByAge = drivingHRMaxEstimation * 0.8
    
    let smallestSleepyLevel = min(sleepyLevelByDaytimeHR, sleepyLevelByAge)
    
    return smallestSleepyLevel
}
