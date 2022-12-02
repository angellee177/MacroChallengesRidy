//
//  SummaryView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 24/11/22.
//

import SwiftUI
import HalfASheet

struct SummaryView: View {
    @State private var isShowing = false
    @EnvironmentObject var isDashboardActive : NavigationDahsboard
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    VStack{
                        Image("rider")
                            .resizable()
                            .frame(width: 198, height: 192, alignment: .center)
                        
                        Text("Your Oxygen level is not normal")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color6"))
                        
                        Text("Oxygen Level is below normal (<95%)")
                            .foregroundColor(.white)
                    }
                    Spacer()
                        .frame(height: 25)
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 346, height: 46)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            HStack{
                                Spacer()
                                    .frame(width: 5)
                                Text("Pre-Ride HR")
                                    .foregroundColor(.white)
                                    .frame(width: 159, height: 22, alignment: .leading)
                                
                                Spacer()
                                    .frame(width: 32)

                                Text(": 93 BPM")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.green)
                            }.frame(width: 300, height: 24, alignment: .leading)
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 346, height: 46)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            HStack{
                                Spacer()
                                    .frame(width: 5)
                                Text("Oxygen Level")
                                    .foregroundColor(.white)
                                    .frame(width: 159, height: 22, alignment: .leading)
                                
                                Spacer()
                                    .frame(width: 32)

                                Text(": 94%")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                            }.frame(width: 300, height: 24, alignment: .leading)
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 346, height: 46)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            HStack{
                                Spacer()
                                    .frame(width: 5)
                                Text("Time since last sleep")
                                    .foregroundColor(.white)
                                    .frame(width: 159, height: 22, alignment: .leading)
                                
                                Spacer()
                                    .frame(width: 32)

                                Text(": 14h 0m")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.yellow)
                            }.frame(width: 300, height: 24, alignment: .leading)
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 346, height: 46)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            HStack{
                                Spacer()
                                    .frame(width: 5)
                                Text("Today's sleep")
                                    .foregroundColor(.white)
                                    .frame(width: 159, height: 22, alignment: .leading)
                                
                                Spacer()
                                    .frame(width: 32)

                                Text(": 5h 52m")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.yellow)
                            }.frame(width: 300, height: 24, alignment: .leading)
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 346, height: 46)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            HStack{
                                Spacer()
                                    .frame(width: 5)
                                Text("KSS")
                                    .foregroundColor(.white)
                                    .frame(width: 159, height: 22, alignment: .leading)
                                
                                Spacer()
                                    .frame(width: 32)

                                Text(": 4")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.green)
                            }.frame(width: 300, height: 24, alignment: .leading)
                        }
                    }
                    Spacer()
                        .frame(height: 36)
                    
                    VStack{
                        Text("Notes:")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 344, alignment: .leading)
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 344, height: 120)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            VStack{
                                Text("Blood oxygen, also known as oxygen saturation. represents the percentage of hemoglobin in your cells that is carrying oxygen.")
                                    .foregroundColor(.white)
                                    .frame(width: 316, height: 98, alignment: .leading)
                            }
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("rectangleColor"))
                                .frame(width: 344, height: 172)
                                .cornerRadius(8)
                                .shadow(color: .black, radius: 4, x: 0, y: 2)
                            VStack{
                                Text("A resting oxygen saturation level between 95% and 100% is regarded as normal for a healthy person at sea level. 92% is considered as hypoxia and you may need to see a doctor.")
                                    .foregroundColor(.white)
                                    .frame(width: 316, height: 110, alignment: .leading)
                                
                                Text("(Yale Medicine)")
                                    .font(.caption)
                                    .foregroundColor(Color("Color4"))
                                    .frame(width: 316, alignment: .leading)
                            }
                        }
                        Spacer()
                            .frame(height: 35)
                        
                        VStack{
                            Text("Back to Dashboard")
                                .fontWeight(.bold)
                                .frame(width: 330)
                                .font(.title3)
                                .padding()
                                .foregroundColor(Color("Color6"))
                                .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(LinearGradient(colors: [Color("Color4"), Color("Color5")], startPoint: .leading, endPoint: .trailing), lineWidth: 4)
                                            .frame(width: 346)
                                    )
                                .onTapGesture {
                                    isDashboardActive.isJustCameBack = true
                                    isDashboardActive.isSheetShow = true
                                    isDashboardActive.isDashboardActive = nil
                                }
                        }
                    }
                }
            }
            
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
