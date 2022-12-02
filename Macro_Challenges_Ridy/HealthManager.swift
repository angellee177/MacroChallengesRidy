//
//  HealthManager.swift
//  Macro_Challenges_Ridy
//
//  Created by Angel Ria Purnamasari on 29/11/22.
//

import Foundation
import HealthKit

class HealthManager{
    static let shared = HealthManager()
    
    let hkStore = HKHealthStore()
    
    init(){
    
    }
    
    func request(){
        //request
        let readType : Set<HKSampleType> = [
            HKQuantityType.init(.heartRate),
            HKQuantityType.init(.oxygenSaturation),
            HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!
        ]
        
        Task.init {
            do{
                try await hkStore.requestAuthorization(toShare: [], read: readType)
            }catch{
                print("error request",error.localizedDescription)
            }
        }
    }
    
    func fetchSleep(onSucces:@escaping (HKCategorySample)->()){
        
        let endDate = Date()
        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: endDate)
        
        //1 bikin predicate
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate)
        //2 bikin sort (optional)
        let sortDesc = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
        //3 bikin query respon
        let query = HKSampleQuery(sampleType: HKObjectType.categoryType(forIdentifier: .sleepAnalysis)!, predicate: predicate, limit: 30, sortDescriptors: [sortDesc]) { query, samples, error in
            
            if let result = samples as? [HKCategorySample]{
                
                for item in result{
                    if item.value == 1{
                        onSucces(item)
                        break
                    }
                }
            }
        }
        //4 hkstore run query
        hkStore.execute(query)
        
    }
    
    func fetchHR(onSuccess:@escaping(HKQuantitySample)->()){
        
        let endDate = Date()
        let startDate = Calendar.current.date(byAdding: .hour, value: -1, to: endDate)
        
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate)
        
        let sortDesc = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
        
        let query = HKSampleQuery(sampleType: HKQuantityType.init(.heartRate), predicate: predicate, limit: 30, sortDescriptors: [sortDesc]) { query, samples, error in
            
            if let result = samples as? [HKQuantitySample]{
                
                dump(result)
                if let item = result.first{
                    onSuccess(item)
                }
                
            }
        }
    }
    
    
}
