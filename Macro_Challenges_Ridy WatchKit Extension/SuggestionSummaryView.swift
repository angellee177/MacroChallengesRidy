//
//  SuggastionSummaryView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct SuggestionSummaryView: View {
    var body: some View {
        TabView{
            ScrollView{
                VStack(spacing: 20){
                    Text("Health Data show.. \nMy SPo2 is below normal (<95%)")
                        .fontWeight(.medium)
                        .frame(width: 150)
                        .multilineTextAlignment(.leading)
                    
                    Text("It is highly likely that I am currently tired. \nI have to think twice before riding my motorcycle")
                        .fontWeight(.medium)
                        .frame(width: 150)
                        .multilineTextAlignment(.leading)
                }
            }
            ScrollView{
                VStack{
                    VStack{
                        VStack(alignment: .leading){
                            Text("KSS")
                                .font(.caption)
                                .fontWeight(.medium)
                            Text("3")
                                .fontWeight(.bold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(.green)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        Spacer()
                            .frame(height: 10)
                        
                        VStack(alignment: .leading){
                            Text("Pre-ride Heart Rate")
                                .font(.caption)
                                .fontWeight(.medium)
                            Text("93 BPM")
                                .fontWeight(.bold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(.green)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        Spacer()
                            .frame(height: 10)
                    }
                    
                    VStack{
                        VStack(alignment: .leading){
                            Text("Oxygen Saturation")
                                .font(.caption)
                                .fontWeight(.medium)
                            Text("95%")
                                .fontWeight(.bold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(.red)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        Spacer()
                            .frame(height: 10)
                        
                        VStack(alignment: .leading){
                            Text("Time since wake-up")
                                .font(.caption)
                                .fontWeight(.medium)
                            Text("14 hours")
                                .fontWeight(.bold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(.yellow)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        Spacer()
                            .frame(height: 10)
                        
                        VStack(alignment: .leading){
                            Text("Tonight’s Sleep")
                                .font(.caption)
                                .fontWeight(.medium)
                            Text("5h 52min")
                                .fontWeight(.bold)
                                .frame(width: 170, alignment: .leading)
                                .foregroundColor(.yellow)
                        }.frame(width: 170, alignment: .leading)
                        Divider()
                        Spacer()
                            .frame(height: 20)
                    }
                    
                    VStack{
                        Text("Do i still want to \nride?")
                            .fontWeight(.bold)
                            .frame(width: 144, height: 46, alignment: .center)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 20)
                    }
                    
                    VStack{
                        NavigationLink(destination: CheckView()){
                            Text("Cancel")
                                .foregroundColor(.white)
                        }
                        .background(Color("Color6"))
                        .mask(RoundedRectangle(cornerRadius: 9))
                        
                        NavigationLink(destination: BeforeRidingView()){
                            Text("Yes")
                                .foregroundColor(.black)
                        }
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Color4"), Color("Color5")]), startPoint: .leading, endPoint: .trailing))
                        .mask(RoundedRectangle(cornerRadius: 9))

                    }
                }
            }
        }
    }
}

struct SuggestionSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionSummaryView()
    }
}
