//
//  ContentView.swift
//  HKTry1
//
//  Created by Muhammad Tafani Rabbani on 29/11/22.
//

import SwiftUI
import HealthKit

struct CobaCobaView: View {
    @StateObject var vmModel = VmForDashboardCoba()
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
                    vmModel.fetchHR()
                }
                
        }
    }
}

class VmForDashboardCoba:ObservableObject{
    
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
    
    func fetchHR(){
        HealthManager.shared.fetchHR { item in
            let heartRateUnit:HKUnit = HKUnit(from: "count/min")
            DispatchQueue.main.async {
                
                self.myHR = item.quantity.doubleValue(for: heartRateUnit)
            }
        }
    }
    
}

class HealthManagerCoba{
    static let shared = HealthManagerCoba()
    
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

struct CobaCobaView_Previews: PreviewProvider {
    static var previews: some View {
        CobaCobaView()
    }
}
