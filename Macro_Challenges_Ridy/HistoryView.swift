//
//  HistoryView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 28/11/22.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Spacer()
                        .frame(height: 15)
                    Text("Riding History")
                        .font(Font.system(size: 22, weight: .bold))
                        .overlay {
                            LinearGradient(
                                colors: [Color("Color4"), Color("Color5")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            .mask(
                                Text("Riding History")
                                    .font(Font.system(size: 22, weight: .bold))
                                    .multilineTextAlignment(.center)
                            )
                        }
                        .multilineTextAlignment(.leading)
                        .frame(width: 330, alignment: .leading)
                }
                Spacer()
                    .frame(height: 26)
                
                VStack(spacing: 3) {
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 345, height: 56)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                        
                        HStack {
                            VStack{
                                Text("1")
                                    .foregroundColor(Color("Color2"))
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            Spacer()
                                .frame(width: 25)
                            
                            VStack{
                                Text("Risk Detected")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 122, alignment: .leading)
                                Text("12/10/2022")
                                    .frame(width: 122, alignment: .leading)
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(width: 122, height: 60, alignment: .leading)
                            Spacer()
                                .frame(width: 80)
                            
                            VStack{
                                Text("07.15")
                                    .foregroundColor(.gray)
                            }.frame(height: 40, alignment: .bottom)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 345, height: 56)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                        
                        HStack {
                            VStack{
                                Text("0")
                                    .foregroundColor(Color("Color2"))
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            Spacer()
                                .frame(width: 25)
                            
                            VStack{
                                Text("Risk Detected")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 122, alignment: .leading)
                                Text("12/10/2022")
                                    .frame(width: 122, alignment: .leading)
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(width: 122, height: 60, alignment: .leading)
                            Spacer()
                                .frame(width: 80)
                            
                            VStack{
                                Text("07.15")
                                    .foregroundColor(.gray)
                            }.frame(height: 40, alignment: .bottom)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 345, height: 56)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                        
                        HStack {
                            VStack{
                                Text("2")
                                    .foregroundColor(Color("Color2"))
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            Spacer()
                                .frame(width: 25)
                            
                            VStack{
                                Text("Risk Detected")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 122, alignment: .leading)
                                Text("12/10/2022")
                                    .frame(width: 122, alignment: .leading)
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(width: 122, height: 60, alignment: .leading)
                            Spacer()
                                .frame(width: 80)
                            
                            VStack{
                                Text("07.15")
                                    .foregroundColor(.gray)
                            }.frame(height: 40, alignment: .bottom)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 345, height: 56)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                        
                        HStack {
                            VStack{
                                Text("1")
                                    .foregroundColor(Color("Color2"))
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            Spacer()
                                .frame(width: 25)
                            
                            VStack{
                                Text("Risk Detected")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 122, alignment: .leading)
                                Text("12/10/2022")
                                    .frame(width: 122, alignment: .leading)
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(width: 122, height: 60, alignment: .leading)
                            Spacer()
                                .frame(width: 80)
                            
                            VStack{
                                Text("07.15")
                                    .foregroundColor(.gray)
                            }.frame(height: 40, alignment: .bottom)
                        }
                    }
                    
                    
                    Spacer()
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
