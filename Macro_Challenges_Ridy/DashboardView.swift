//
//  DashboardView.swift
//  Macro_Challenges_Ridy
//
//  Created by Hisyam sanusi on 21/11/22.
//

import SwiftUI
import HalfASheet

class NavigationDahsboard : ObservableObject{
    @Published var isDashboardActive : String? = nil
    @Published var isJustCameBack = false
    @Published var isSheetShow = false
}

struct DashboardView: View {
    @State private var isShowing = false
    @EnvironmentObject var isDashboardActive : NavigationDahsboard
    
    var body: some View {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
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
                            Text("20-min Heart Rate")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }.frame(width: 330, alignment: .leading)
                        
                        Divider()
                            .frame(width: 330)
                            .background(.white)
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("rectangleColor"))
                                    .frame(width: 352, height: 246)
                                    .cornerRadius(8)
                                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                                
                                VStack{
                                    Text("Press the Button to let Ridy start monitoring your Heart Rate")
                                        .foregroundColor(.white)
                                        .frame(width: 316, height: 52, alignment: .leading)
                                    Spacer()
                                        .frame(height: 45)
                                    
                                    Text("This option will only available 5 minute after the Pre-Ride test")
                                        .foregroundColor(.white)
                                        .frame(width: 316, height: 52, alignment: .leading)
                                    
                                    if isDashboardActive.isJustCameBack{
                                        Button{
                                            
                                        } label: {
                                            Text("Start Riding")
                                                .fontWeight(.bold)
                                                .frame(width: 300)
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
                    Spacer()
                    
                    NavigationLink(destination: KSSLevelView().environmentObject(isDashboardActive), tag: "KSS", selection: $isDashboardActive.isDashboardActive){EmptyView()}
                    
                    Text("Check")
                        .fontWeight(.bold)
                        .frame(width: 330)
                        .font(.title3)
                        .padding()
                        .foregroundColor(.black)
                        .background(LinearGradient(colors: [Color("Color4"), Color("Color5")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(15)
                        .onTapGesture {
                            self.isDashboardActive.isDashboardActive = "KSS"
                        }
                }
                
                HalfASheet(isPresented: $isDashboardActive.isSheetShow, title: "Guidlines"){
                            VStack{
                                Spacer()
                                    .frame(height: 40)
                                VStack() {
                                    Text("20 minutes Heart Rate \nMonitoring")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 206, height: 50, alignment: .leading)
                                }.frame(width: 340, alignment: .leading)
                                    
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 344, height: 115)
                                            .cornerRadius(8)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        VStack{
                                            Text("For extra-safety measure, We will monitor your Heart Rate for 20 minutes since you start riding, and notify you in later.")
                                                .foregroundColor(.white)
                                                .frame(width: 316, height: 94, alignment: .leading)
                                        }.frame(width: 300, height: 24, alignment: .leading)
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 344, height: 95)
                                            .cornerRadius(8)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        VStack{
                                            Text("Start monitoring by pressing the “start button” on the dash board or the ”play button” on your watch")
                                                .foregroundColor(.white)
                                                .frame(width: 316, height: 73, alignment: .leading)
                                        }
                                    }
                                    
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 344, height: 70)
                                            .cornerRadius(8)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        VStack{
                                            Text("Please stop in a safe place to see our notification. ")
                                                .foregroundColor(.white)
                                                .frame(width: 316, height: 43, alignment: .leading)
                                        }
                                    }
                                }
                                Spacer()
                                    .frame(height: 30)
                                
                                VStack() {
                                    Text("If you dont want to ride.. \nCheck ya later!")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 222, height: 50, alignment: .leading)
                                }.frame(width: 340, alignment: .leading)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(Color("rectangleColor"))
                                            .frame(width: 344, height: 94)
                                            .cornerRadius(8)
                                            .shadow(color: .black, radius: 4, x: 0, y: 2)
                                        VStack{
                                            Text("The result have been saved. \nBut, please do a pre-drive test again if you want to ride later.")
                                                .foregroundColor(.white)
                                                .frame(width: 316, height: 94, alignment: .leading)
                                        }.frame(width: 300, height: 24, alignment: .leading)
                                    }
                                }
                                Spacer()
                                    .frame(height: 30)
                            }
                }
                .closeButtonColor(.black)
                .backgroundColor(.black)
            }
        
    }
    
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(NavigationDahsboard())
    }
}
