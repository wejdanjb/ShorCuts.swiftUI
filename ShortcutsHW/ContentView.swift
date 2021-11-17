//
//  ContentView.swift
//  ShortcutsHW
//
//  Created by Wejdan Alkhaldi on 12/04/1443 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            TopView()
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2")
                    Text("My shortcuts")
                }
            Text("Animation View")
                .tabItem {
                    Image(systemName: "deskclock.fill")
                    Text("Animation")
                }
            Text("Gallery View")
                .tabItem {
                    Image(systemName: "square.2.stack.3d.top.filled")
                    Text("Gallery")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
