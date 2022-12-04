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

enum MonitorinCardState{
    case inactive
    case active
    case timer
}

struct DashboardView: View {
    @State private var isShowing = false
    @EnvironmentObject var isDashboardActive : NavigationDahsboard
    @State private var presentAlert = false
    
    @State var monitoringCardState : MonitorinCardState = .inactive
    
    var body: some View {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack{
                    VStack(spacing: 5){
                        Spacer()
                            .frame(height: 15)
                        Text("Hello, Rider!")
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
                        preRideCard
                    }
                    Spacer()
                        .frame(height: 55)
                    
                    if monitoringCardState == .timer{
                        CountDown(cardState : $monitoringCardState)
                    }else{
                        monitoringCard
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
                
                HalfASheet(isPresented: $isDashboardActive.isSheetShow, title: "To ride or not to ride"){
                    VStack{
                        Spacer()
                            .frame(height: 40)
                        VStack() {
                            Text("If you want to ride…")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("Color6"))
                                .frame(width: 206, height: 50, alignment: .leading)
                        }.frame(width: 340, alignment: .leading)
                            
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("rectangleColor"))
                                    .frame(width: 344, height: 74)
                                    .cornerRadius(8)
                                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                                VStack{
                                    Text("Press “Start Riding” on the dash board or the ”play button” on your watch")
                                        .foregroundColor(.white)
                                        .frame(width: 316, height: 50, alignment: .leading)
                                }.frame(width: 300, height: 24, alignment: .leading)
                            }
                            Spacer()
                                .frame(height: 20)
                            
                            Image("startfinger")
                                .resizable()
                                .frame(width: 200, height: 150)
                            
                            Spacer()
                                .frame(height: 20)
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("rectangleColor"))
                                    .frame(width: 344, height: 70)
                                    .cornerRadius(8)
                                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                                VStack{
                                    Text("We will monitor your Heart Rate for 20 minutes if you start riding.")
                                        .foregroundColor(.white)
                                        .frame(width: 316, height: 70, alignment: .leading)
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
                                .foregroundColor(Color("Color6"))
                                .frame(width: 222, height: 50, alignment: .leading)
                        }.frame(width: 340, alignment: .leading)
                        Spacer()
                            .frame(height: 15)
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
                .closeButtonColor(.gray)
                .backgroundColor(.black)
            }
    }
    
    var monitoringCard : some View{
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
                        Text("For extra-safety measure, We will monitor your Heart Rate \n20 minutes since you start riding")
                            .foregroundColor(.white)
                            .frame(width: 316, height: 72, alignment: .leading)
                        Spacer()
                            .frame(height: 35)
                        
                        Text("This feature will only appear after you take a pre-drive test.")
                            .foregroundColor(.white)
                            .frame(width: 316, height: 52, alignment: .leading)
                        
                        Button{
                            presentAlert = true
                        }   label: {
                            Text("Start Riding")
                                .fontWeight(.bold)
                                .frame(width: 300)
                                .font(.title3)
                                .padding()
                                .foregroundColor(.black)
                                .background(LinearGradient(colors: [Color("Color4"), Color("Color5")], startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(15)
                        }.alert("Are you sure you want to ride?", isPresented: $presentAlert, actions: {
                            // 1
                              Button("No", role: .cancel, action: {})
                                .background(Color("Color6"))

                              Button("Yes", role: .destructive, action: {
                                  self.monitoringCardState = .timer
                              })
                                .background(Color("Color6"))
                            }, message: {
                              Text("You are responsible for your own well-being")
                            })
                        .disabled(!isDashboardActive.isJustCameBack)
                        .opacity(isDashboardActive.isJustCameBack ? 1 : 0.5)
                    }
                }
            }
            
        }
    }
    
    var preRideCard : some View{
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
                    Text("Pre-ride test taken")
                        .foregroundColor(.white)
                        .frame(width: 170, alignment: .leading)
                    Text("0")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Color2"))
                        .font(.title2)
                        .frame(width: 170, alignment: .leading)
                }
                
                Spacer()
                    .frame(width: 5)
                Divider()
                    .frame(height: 42)
                    .background(.white)
                Spacer()
                    .frame(width: 20)
                
                VStack{
                    Text("Detected")
                        .foregroundColor(.white)
                        .frame(width: 75, alignment: .leading)
                    Text("0 risk")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Color2"))
                        .font(.title2)
                        .frame(width: 75, alignment: .leading)
                }
                
                Spacer()
                    .frame(width: 25)
            }
        }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(NavigationDahsboard())
    }
}
