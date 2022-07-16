//
//  SwiftUIGesturesView.swift
//  Animations
//
//  Created by Jacek Placek on 16/07/2022.
//

import SwiftUI

struct SwiftUIGesturesView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow,.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(DragGesture()
                .onChanged{ dragAmount = $0.translation }
                .onEnded{ _ in
                    withAnimation{
                        dragAmount = .zero
                    }
                    dragAmount = .zero}
                )
            //.animation(.spring(), value: dragAmount)
    }
}

struct SwiftUIGesturesView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIGesturesView()
    }
}
