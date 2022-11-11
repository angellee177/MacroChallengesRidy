//
//  SuggastionSummaryView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct SuggastionSummaryView: View {
    var body: some View {
        TabView{
            VStack(spacing: 20){
                Text("Feeling fit? \nYour vital signs is in \na good condition!")
                    .fontWeight(.medium)
                    .frame(width: 170)
                    .multilineTextAlignment(.leading)
                
                Text("Don’t be hasty, as you are on top gear!")
                    .fontWeight(.medium)
                    .frame(width: 170)
                    .multilineTextAlignment(.leading)
            }
            ScrollView{
                VStack{
                    HStack(spacing: 30){
                        Spacer()
                        Image("icon2")
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading){
                            Text("Readiness")
                                .font(.caption)
                            Text("Decent")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: 100, alignment: .leading)
                                .foregroundColor(.green)
                        }
                        Spacer()
                    }
                    Divider()
                    VStack{
                        VStack(alignment: .leading){
                            Text("Avg. flight time")
                                .font(.caption)
                            Text("1.6 seconds")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(Color("Color1"))
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        
                        VStack(alignment: .leading){
                            Text("Sleepiness scale")
                                .font(.caption)
                            Text("3")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: 100, alignment: .leading)
                                .foregroundColor(Color("Color1"))
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        
                        VStack(alignment: .leading){
                            Text("Pre-ride heart rate")
                                .font(.caption)
                            Text("99 BPM")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: 100, alignment: .leading)
                                .foregroundColor(Color("Color1"))
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        
                        VStack(alignment: .leading){
                            Text("1st test avg. flight time")
                                .font(.caption)
                            Text("1.5 seconds")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(width: 170, alignment: .leading)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        
                        VStack(alignment: .leading){
                            Text("Resting heart rate (avg)")
                                .font(.caption)
                                .frame(width: 180, alignment: .leading)
                            Text("76 BPM")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(width: 170, alignment: .leading)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                    }
                }
            }
        }
    }
}

struct SuggastionSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SuggastionSummaryView()
    }
}
