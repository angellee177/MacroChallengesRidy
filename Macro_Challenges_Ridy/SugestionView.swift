//
//  SugestionView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 24/11/22.
//

import SwiftUI

struct SugestionView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Overview")
                    .font(Font.system(size: 22, weight: .bold))
                    .overlay {
                        LinearGradient(
                            colors: [Color("Color4"), Color("Color5")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                        .mask(
                            Text("Overview")
                                .font(Font.system(size: 22, weight: .bold))
                                .multilineTextAlignment(.center)
                        )
                    }
                    .multilineTextAlignment(.leading)
                    .frame(width: 330, alignment: .leading)
                Spacer()
                    .frame(height: 20)
                
                VStack{
                    Text("Status (KSS):")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 340, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 344, height: 50)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                        HStack{
                            Text("Currently, you feel")
                                .foregroundColor(.white)

                            Text("Rather Allert")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Color2"))
                            
                        }.frame(width: 330, height: 24, alignment: .leading)
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Warning (Health Data):")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 340, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 344, height: 60)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                    
                            Text("Meanwhile, your Health Data show.. \nYour Oxygen Level is quite low.")
                                .foregroundColor(.white)
                                .frame(width: 330, height: 50, alignment: .leading)
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Expected Behaviour:")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width: 340, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("rectangleColor"))
                            .frame(width: 344, height: 60)
                            .cornerRadius(8)
                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                    
                            Text("It is highly likely that you are tired. \nThink twice before riding your motorcycle")
                                .foregroundColor(.white)
                                .frame(width: 330, height: 50, alignment: .leading)
                    }
                }
                
                
                Spacer()
                
                VStack{
                    NavigationLink(destination: SummaryView()){
                        Text("See Summary")
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
                    }
                }
            }
        }
    }
}

struct SugestionView_Previews: PreviewProvider {
    static var previews: some View {
        SugestionView()
    }
}
