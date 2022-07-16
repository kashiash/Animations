//
//  Tabs.swift
//  Animations
//
//  Created by Jacek Placek on 16/07/2022.
//

import SwiftUI

struct Tabs: View {
    

    
    var body: some View {
        
        TabView {
            SwiftUIView()

                .tabItem {
                    Label("One", systemImage: "star")
                }
               

            ContentView()
 
                .tabItem {
                    Label("Two", systemImage: "moon")
                }
            
            SwiftUIViewExplicit()
    
                .tabItem {
                    Label("Three", systemImage: "square.and.pencil")
                }
               
            SwiftUIGesturesView()
                .tabItem {
                    Label("Gestures", systemImage: "square.and.pencil")
                }
            HidingShowingView()
                .tabItem {
                    Label("Showing", systemImage: "star")
                }
            
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
