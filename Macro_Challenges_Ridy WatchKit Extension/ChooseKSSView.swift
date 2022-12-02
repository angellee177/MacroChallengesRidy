//
//  ChooseKSSView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 10/11/22.
//

import SwiftUI

struct ChooseKSSView: View {
    var body: some View {
        ScrollView{
            VStack {
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("1")
                                .foregroundColor(.green)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Extremely alert")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("2")
                                .foregroundColor(.green)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Very alert")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("3")
                                .foregroundColor(.green)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Alert")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("4")
                                .foregroundColor(.blue)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Rather alert")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("5")
                                .foregroundColor(.blue)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Neither alert nor sleepy")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("6")
                                .foregroundColor(.yellow)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Some signs of sleepiness")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("7")
                                .foregroundColor(.yellow)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Sleepy, no effort to keep awake")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("8")
                                .foregroundColor(.red)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Sleepy, some effort to keep awake")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        
                        HStack {
                            Text("9")
                                .foregroundColor(.red)
                                .font(.system(size: 21, weight: .bold))
                                .frame(width: 25, height: 58, alignment: .leading)
                            
                            Text("Very sleepy, great effort to keep awake")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .frame(width: 120, height: 58, alignment: .leading)
                        }
                    }
                }
                Spacer()
                    .frame(height: 30)
                
                VStack{
                    NavigationLink(destination: SuggestionSummaryView()){
                        Text("Select")
                            .foregroundColor(.white)
                    }
                    .background(Color("Color6"))
                    .mask(RoundedRectangle(cornerRadius: 9))
                }
            }
        }
    }
}

struct ChooseKSSView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseKSSView()
    }
}
