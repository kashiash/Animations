//
//  SwiftUIViewExpliciot.swift
//  Animations
//
//  Created by Jacek Placek on 16/07/2022.
//

import SwiftUI

struct SwiftUIViewExplicit: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap me"){
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
       // .padding(50)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct SwiftUIViewExplicit_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExplicit()
    }
}
