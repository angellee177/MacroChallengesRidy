//
//  CheckHistoryView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 10/11/22.
//

import SwiftUI

struct CheckHistoryView: View {
    var body: some View {
        VStack {
            TabView{
                VStack(spacing: 33){
                    Spacer()
                        .frame(height: 35)
                    Text("Are you ready \nto ride?")
                        .fontWeight(.medium)
                        .frame(width: 150, height: 45)
                        .multilineTextAlignment(.center)
                    
                    Button {
                        //print(selection)
                    } label: {
                        Text("Let's Check!")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                    .buttonStyle(BorderedButtonStyle(tint: Color("Color1")))
                    
                }
                ScrollView{
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 180, height: 58)
                                .foregroundColor(Color("Color2").opacity(0.11))
                            VStack{
                                Text("Readiness")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .frame(width: 150, height: 22, alignment: .leading)
                                HStack{
                                    Text("Decent")
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                        .frame(width: 105, height: 22, alignment: .leading)
                                    Text("07:30")
                                        .font(.caption2)
                                        .fontWeight(.medium)
                                        .frame(width: 40, height: 22, alignment: .leading)
                                }
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 180, height: 58)
                                .foregroundColor(Color("Color2").opacity(0.11))
                            VStack{
                                Text("Readiness")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .frame(width: 150, height: 22, alignment: .leading)
                                HStack{
                                    Text("High")
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                        .frame(width: 105, height: 22, alignment: .leading)
                                    Text("08:21")
                                        .font(.caption2)
                                        .fontWeight(.medium)
                                        .frame(width: 40, height: 22, alignment: .leading)
                                }
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 180, height: 58)
                                .foregroundColor(Color("Color2").opacity(0.11))
                            VStack{
                                Text("Readiness")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .frame(width: 150, height: 22, alignment: .leading)
                                HStack{
                                    Text("Enough")
                                        .fontWeight(.bold)
                                        .foregroundColor(.yellow)
                                        .frame(width: 105, height: 22, alignment: .leading)
                                    Text("16:15")
                                        .font(.caption2)
                                        .fontWeight(.medium)
                                        .frame(width: 40, height: 22, alignment: .leading)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct CheckHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        CheckHistoryView()
    }
}
