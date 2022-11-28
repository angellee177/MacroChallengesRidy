//
//  KSSLV.swift
//  Macro_Challenges_Ridy
//
//  Created by Jauza Krito on 28/11/22.
//

import SwiftUI

struct KSSLV: View {
    var body: some View {
        HStack {
            Text("Example")
                .font(Font.headline)
                .padding()
            RadioButtonGroup(items: ["Extremely Alert", "Very Alert", "Alert", "Rather Alert", "Neither Alert Nor Sleepy", "Some Sign of Sleepiness", "Sleepy, no effort to keep awake", "Sleepy, some effort to keep awake", "Very Sleepy, great effort to keep away"], selectedId: "London") { selected in
                print("Selected is: \(selected)")
            }
        }.padding()
    }
}

struct ColorInvert: ViewModifier {

    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
        Group {
            if colorScheme == .dark {
                content.colorInvert()
            } else {
                content
            }
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
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.selectedID == self.id ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                    .modifier(ColorInvert())
                Text(id)
                    .font(Font.system(size: textSize))
                Spacer()
            }.foregroundColor(self.color)
        }
        .foregroundColor(self.color)
    }
}

struct KSSImagesAsset {
    var KSSImageNames : [String]
}

struct RadioButtonGroup: View {

    let items : [String]
    let kssnames : KSSImagesAsset = KSSImagesAsset(KSSImageNames: ["kss1", "kss2", "kss3", "kss4", "kss5", "kss6", "kss7", "kss8", "kss9"])

    @State var selectedId: String = ""

    let callback: (String) -> ()

    var body: some View {
        VStack {
            ForEach(kssnames.KSSImageNames, id:\.self) { kssname in
                RadioButton(Image(kssname), callback: self.radioGroupCallback, selectedID: self.selectedId)
            }
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

struct KSSLV_Previews: PreviewProvider {
    static var previews: some View {
        KSSLV()
    }
}
