//
//  ArrShortcuts.swift
//  ShortcutsHW
//
//  Created by Wejdan Alkhaldi on 12/04/1443 AH.
//

import SwiftUI
class ArrShortcuts : ObservableObject{
    @Published var shortCats = [
        ShortCut(name: "Alarm", icon: "alarm", actions: 4 , color: .green.opacity(0.8)),
        ShortCut(name: "Make Gif", icon: "photo.on.rectangle.angled", actions: 1 , color: .pink.opacity(0.8)),
        ShortCut(name: "Calculate Tip", icon: "dollarsign.circle.fill", actions: 17, color: .blue.opacity(0.8)),
        ShortCut(name: "XS Frames", icon: "phone.fill", actions: 55, color: .orange.opacity(0.8)),
        ShortCut(name: "What's a shortcut?", icon: "square.2.stack.3d", actions: 37, color: .gray.opacity(0.8)),
        ShortCut(name: "Taylor Swift", icon: "music.note.list", actions: 24, color: .purple.opacity(0.8)),
       
    ]
}

