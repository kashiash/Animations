//
//  SwiftUIView.swift
//  Animations
//
//  Created by Jacek Placek on 16/07/2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        Button("Dziabnij mnie!"){
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0) )
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
