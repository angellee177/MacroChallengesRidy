//
//  KSSLevelView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 23/11/22.
//

import SwiftUI

struct KSSLevelView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
            GeometryReader { geo in
                ZStack{
                    Image("Bg2")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    ScrollView{
                        VStack{
                            Spacer()
                                .frame(height: 20)
                            VStack{
                                Text("Please be aware that your personal opinion on your well-being weighs heavily. \nStart with assesing how you feel by Karolinska Sleepiness Scale (KSS).")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(width: 353, height: 88)
                            }
                            Spacer()
                                .frame(height: 20)
                            VStack{
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss1")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Extremely Alert")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss2")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Very Alert")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss3")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Alert")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss4")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Rather Alert")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss5")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Neither Alert Nor Sleepy")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss6")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Some sign of sleepiness")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss7")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Sleepy, no effort to keep \nawake")
                                                    .foregroundColor(.white)
                                                    .frame(width: 232, height: 50, alignment: .leading)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss8")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Sleepy, some effort to keep awake")
                                                    .foregroundColor(.white)
                                                    .frame(width: 232, height: 50, alignment: .leading)
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 346, height: 58)
                                            .cornerRadius(17)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        
                                        HStack {
                                            Spacer()
                                                .frame(width: 45)
                                            VStack{
                                                Circle()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                                .frame(width: 25)
                                            
                                            VStack{
                                                 Image("kss9")
                                                    .resizable()
                                                    .frame(width: 36, height: 36)
                                            }
                                            Spacer()
                                                .frame(width: 20)
                                            
                                            VStack{
                                                Text("Very sleepy, great effort to keep awake")
                                                    .foregroundColor(.white)
                                            }
                                            Spacer()
                                        }
                                    }
                                }
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                VStack{
                                    NavigationLink(destination: SugestionView()){
                                        Text("Check My Health Data")
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
            }
            .navigationBarTitle(Text("KSS Level")) .navigationBarHidden(false)
        
    }
}

struct KSSLevelView_Previews: PreviewProvider {
    static var previews: some View {
        KSSLevelView()
    }
}
