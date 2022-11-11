//
//  ChooseKSSView.swift
//  Macro_Challenges_Ridy WatchKit Extension
//
//  Created by Hisyam sanusi on 10/11/22.
//

import SwiftUI

struct ChooseKSSView: View {
    let screenWidth = WKInterfaceDevice.current().screenBounds.width
    @State private var selection = 1
    private let spfOption: [String] = [
        "01",
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
    ]
    
    var body: some View {
        VStack {
            Picker(selection: $selection) {
                ForEach(0 ..< spfOption.count, id: \.self) { index in
                        Text(spfOption[index])
                            .tag(index)
                            .font(index == selection ? .title2 : .body)
                }
            }
        label: {
            Spacer()
            ZStack{
                Capsule()
                    .frame(width: 31, height: 17)
                    .foregroundColor(Color("Color1"))
                Text("KSS")
                    .font(.footnote)
                    .foregroundColor(.black)
            }
        }
        .clipped()
        .frame(height: 105)
            
            Spacer()
            
            Button {
                print(selection)
            } label: {
                Text("Select")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
            }
            .buttonStyle(BorderedButtonStyle(tint: Color("Color1")))
        }
    }
}

struct ChooseKSSView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseKSSView()
    }
}
