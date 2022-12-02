//
//  CheckHistoryView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 10/11/22.
//

import SwiftUI

struct CheckView: View {
    var body: some View {
        TabView{
            NavigationView{
                VStack(spacing: 33){
                    Spacer()
                        .frame(height: 35)
                    Text("Am i ready to \nride?")
                        .fontWeight(.medium)
                        .frame(width: 150, height: 45)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: ChooseKSSView()){
                        Text("Check")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                    .background(LinearGradient(gradient: Gradient(colors: [Color("Color4"), Color("Color5")]), startPoint: .leading, endPoint: .trailing))
                    .mask(RoundedRectangle(cornerRadius: 24))
                }
            }
            
            ScrollView{
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 180, height: 58)
                            .foregroundColor(Color("Color2").opacity(0.11))
                        VStack{
                            Text("21 Nov 2022")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .frame(width: 150, height: 22, alignment: .leading)
                            HStack{
                                Text("0 Warning")
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
                            Text("19 Nov 2022")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .frame(width: 150, height: 22, alignment: .leading)
                            HStack{
                                Text("1 Warning")
                                    .fontWeight(.bold)
                                    .foregroundColor(.yellow)
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
                            Text("19 Nov 2022")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .frame(width: 150, height: 22, alignment: .leading)
                            HStack{
                                Text("2 Warnings")
                                    .fontWeight(.bold)
                                    .foregroundColor(.orange)
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

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
