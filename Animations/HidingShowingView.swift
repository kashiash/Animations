//
//  HidingShowingView.swift
//  Animations
//
//  Created by Jacek Placek on 16/07/2022.
//

import SwiftUI

struct HidingShowingView: View {
    @State private var isShowingred = false
    var body: some View {
        VStack{
        Button("Tap me"){
            withAnimation{
                isShowingred.toggle()
            }
        
        }
            if isShowingred{
       Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: AnyTransition.opacity))
            }
        }
            
    }
}


struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint

    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct HidingShowingView_Previews: PreviewProvider {
    static var previews: some View {
        HidingShowingView()
    }
}
