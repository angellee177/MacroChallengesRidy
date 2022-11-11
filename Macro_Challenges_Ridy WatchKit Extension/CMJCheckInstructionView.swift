//
//  CMJCheckInstructionView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 11/11/22.
//

import SwiftUI

struct CMJCheckInstructionView: View {
    var body: some View {
        TabView{
            VStack(spacing: 18){
                Spacer()
                    .frame(height: 35)
                Text("We will do the 3x Jump Test!")
                    .fontWeight(.medium)
                    .frame(width: 150, height: 45)
                    .multilineTextAlignment(.center)
                Text("Jump on a Beep!")
                    .fontWeight(.medium)
                    .frame(width: 150, height: 45)
                    .multilineTextAlignment(.center)
                
                Button {
                    //print(selection)
                } label: {
                    Text("Okay!")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .buttonStyle(BorderedButtonStyle(tint: Color("Color1")))
            }
            
            ScrollView{
                VStack{
                    VStack{
                        Text("Counter Movement Jump is an objective jump test to see your fitness. \n\nWe will do it 3 times")
                            .fontWeight(.medium)
                            .frame(width: 170, height: 125)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 15)
                        Divider()
                    }
                    
                    VStack{
                        Text("Step 1")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Find a flat footings")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Spacer()
                            .frame(height: 10)
                        Divider()
                        
                        Text("Step 2")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Hands on Hips!")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Divider()
                        
                        Text("Step 3")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Bend your knees")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Divider()
                    }
                    
                    VStack{
                        Text("Step 4")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Jump!")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Divider()
                        
                        Text("Step 5")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Land on the same \nSpot")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Divider()
                        
                        Text("Step 6")
                            .fontWeight(.bold)
                            .frame(width: 160, alignment: .leading)
                        Text("Repeat!")
                            .fontWeight(.medium)
                            .frame(width: 160, alignment: .leading)
                        Divider()
                    }
                }
            }
        }
    }
}

struct CMJCheckInstructionView_Previews: PreviewProvider {
    static var previews: some View {
        CMJCheckInstructionView()
    }
}
