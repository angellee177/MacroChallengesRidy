//
//  DashboardView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 21/11/22.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView{
            GeometryReader { geo in
                ZStack{
                    Image("Bg2")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    
                    VStack{
                        VStack(spacing: 5){
                            Spacer()
                                .frame(height: 15)
                            Text("Hello, Rider (Name)!")
                                .foregroundColor(.white)
                                .frame(width: 330, alignment: .leading)
                            Text("Today’s, Riding Activity:")
                                .font(Font.system(size: 22, weight: .bold))
                                .overlay {
                                    LinearGradient(
                                        colors: [Color("Color4"), Color("Color5")],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                    .mask(
                                        Text("Today’s, Riding Activity:")
                                            .font(Font.system(size: 22, weight: .bold))
                                            .multilineTextAlignment(.center)
                                    )
                                }
                                .multilineTextAlignment(.leading)
                                .frame(width: 330, alignment: .leading)
                            
                            Spacer()
                                .frame(height: 10)
                            ZStack{
                                Rectangle()
                                    .overlay {
                                        LinearGradient(
                                            colors: [Color("Color4"), Color("Color5")],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    }
                                    .frame(width: 335, height: 75)
                                    .cornerRadius(17)
                                    .opacity(0.28)
                                HStack{
                                    Spacer()
                                        .frame(width: 10)
                                    
                                    VStack{
                                        Text("Duration")
                                            .foregroundColor(.white)
                                            .frame(width: 75, alignment: .leading)
                                        Text("2h 12m")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("Color2"))
                                            .font(.title2)
                                            .frame(width: 75, alignment: .leading)
                                    }
                                    
                                    Spacer()
                                        .frame(width: 25)
                                    Divider()
                                        .frame(height: 42)
                                    Spacer()
                                        .frame(width: 25)
                                    
                                    VStack{
                                        Text("Pre-test")
                                            .foregroundColor(.white)
                                            .frame(width: 75, alignment: .leading)
                                        Text("1")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("Color2"))
                                            .font(.title2)
                                            .frame(width: 75, alignment: .leading)
                                    }
                                    
                                    Spacer()
                                        .frame(width: 25)
                                    Divider()
                                        .frame(height: 42)
                                    Spacer()
                                        .frame(width: 25)
                                    
                                    VStack{
                                        Text("Warning")
                                            .foregroundColor(.white)
                                            .frame(width: 75, alignment: .leading)
                                        Text("0")
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("Color2"))
                                            .font(.title2)
                                            .frame(width: 75, alignment: .leading)
                                    }
                                    
                                }
                            }
                        }
                        Spacer()
                            .frame(height: 55)
                        
                        VStack{
                            
                            HStack {
                                Text("Recent History")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                                
                                Text("See All")
                                    .foregroundColor(Color("Color1"))
                                
                            }.frame(width: 330, alignment: .leading)
                            
                            Divider()
                                .frame(width: 330)
                                .background(.white)
                            
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("rectangleColor"))
                                    .frame(width: 335, height: 75)
                                    .cornerRadius(17)
                                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                                
                                HStack {
                                    VStack{
                                        Text("0")
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .fontWeight(.bold)
                                    }
                                    Spacer()
                                        .frame(width: 25)
                                    
                                    VStack{
                                        Text("Warning")
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .frame(width: 122, alignment: .leading)
                                        Text("12/10/2022")
                                            .font(.title2)
                                            .frame(width: 122, alignment: .leading)
                                            .foregroundColor(.gray)
                                        
                                    }
                                    .frame(width: 122, height: 60, alignment: .leading)
                                    Spacer()
                                        .frame(width: 80)
                                    
                                    VStack{
                                        Text("07.15")
                                            .foregroundColor(.gray)
                                    }.frame(height: 60, alignment: .bottom)
                                    
                                }
                                
                                
                            }
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("rectangleColor"))
                                    .frame(width: 335, height: 75)
                                    .cornerRadius(17)
                                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                                
                                HStack {
                                    VStack{
                                        Text("1")
                                            .foregroundColor(Color("Color3"))
                                            .font(.title)
                                            .fontWeight(.bold)
                                    }
                                    Spacer()
                                        .frame(width: 25)
                                    
                                    VStack{
                                        Text("Warning")
                                            .foregroundColor(.white)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .frame(width: 122, alignment: .leading)
                                        Text("12/10/2022")
                                            .font(.title2)
                                            .frame(width: 122, alignment: .leading)
                                            .foregroundColor(.gray)
                                        
                                    }
                                    .frame(width: 122, height: 60, alignment: .leading)
                                    Spacer()
                                        .frame(width: 80)
                                    
                                    VStack{
                                        Text("07.15")
                                            .foregroundColor(.gray)
                                    }.frame(height: 60, alignment: .bottom)
                                    
                                }
                                
                                
                            }
                        }
                        Spacer()
                        
                        NavigationLink(destination: KSSLevelView()){
                            Text("Check")
                                .fontWeight(.bold)
                                .frame(width: 330)
                                .font(.title3)
                                .padding()
                                .foregroundColor(.black)
                                .background(LinearGradient(colors: [Color("Color4"), Color("Color5")], startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(15)
                        }
                    }
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
