//
//  KSSView.swift
//  Macro_Challenges_Ridy
//
//  Created by Jauza Krito on 02/12/22.
//

import SwiftUI

struct KSSView: View {
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    @EnvironmentObject var dashboard : NavigationDahsboard
    @State var selectedKSS = ""
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("Bg2")
                    .resizable()
                //.scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                ScrollView {
                    VStack {
                        Spacer()
                            .frame(height: 20)
                        VStack {
                            Text("Please be aware that your personal opinion on your well-being weighs heavily. \nStart with assesing how you feel by Karolinska Sleepiness Scale (KSS).")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 353, height: 88)
                        }
                        Spacer()
                            .frame(height: 20)
                        VStack {
                            VStack {
                                RadioButtonGroup(items: ["Extremely Alert", "Very Alert", "Alert", "Rather Alert", "Neither Alert Nor Sleepy", "Some sign of sleepiness", "Sleepy, no effort to keep awake", "Sleepy, some effort to keep awake", "Very sleepy, great effort to keep awake"], selectedId: "London") { selected in
                                    print("Selected is: \(selected)")
                                    self.selectedKSS = selected
                                }
                            }
                            Spacer()
                                .frame(height: 30)
                            VStack {
                                NavigationLink(destination: SugestionView(selectedKSS: $selectedKSS)){
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
                                }.disabled(selectedKSS.isEmpty)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitle(Text("KSS Level"))
        .navigationBarHidden(false)
        .onAppear{
            print(dashboard.isDashboardActive as Any)
        }
    }
}

struct RadioButton: View {

    @Environment(\.colorScheme) var colorScheme

    let id: String
    let callback: (String)->()
    let selectedID : String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat

    init(
        _ id: String,
        callback: @escaping (String)->(),
        selectedID: String,
        size: CGFloat = 20,
        color: Color = Color.primary,
        textSize: CGFloat = 14
        ) {
        self.id = id
        self.size = size
        self.color = color
        self.textSize = textSize
        self.selectedID = selectedID
        self.callback = callback
    }

    var body: some View {
        Button(action:{
            self.callback(self.id)
        }) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("rectangleColor"))
                    .frame(width: 346, height: 58)
                    .cornerRadius(17)
                    .shadow(color: .black, radius: 4, x: 0, y: 2)
                HStack {
                    Spacer()
                        .frame(width: 45)
                    VStack {
                        Image(systemName: self.selectedID == self.id ? "checkmark.circle.fill" : "circle")
                            //.renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: self.size, height: self.size)
                            //.modifier(ColorInvert())
                            .foregroundColor(.white)
                    }
                    Spacer()
                        .frame(width: 20)
                    Text(id)
                        .font(Font.system(size: textSize))
                        .foregroundColor(.white)
                    Spacer()
                }.foregroundColor(self.color)
            }
        }
        .foregroundColor(self.color)
    }
}

struct RadioButtonGroup: View {

    let items : [String]

    @State var selectedId: String = ""

    let callback: (String) -> ()

    var body: some View {
        VStack {
            ForEach(0..<items.count) { index in
                RadioButton(self.items[index], callback: self.radioGroupCallback, selectedID: self.selectedId)
            }
        }
    }

    func radioGroupCallback(id: String) {
        selectedId = id
        callback(id)
    }
}


struct KSSView_Previews: PreviewProvider {
    static var previews: some View {
        KSSView()
    }
}
