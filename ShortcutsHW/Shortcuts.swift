//
//  Shortcuts.swift
//  ShortcutsHW
//
//  Created by Wejdan Alkhaldi on 12/04/1443 AH.
//

import SwiftUI

struct ShortCut : Identifiable{
    let id = UUID()
    var name : String
    var icon : String
    var actions : Int
    var  color : Color
}
