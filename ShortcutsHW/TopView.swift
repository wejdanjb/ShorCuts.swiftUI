//
//  TopView.swift
//  ShortcutsHW
//
//  Created by Wejdan Alkhaldi on 12/04/1443 AH.
//

import SwiftUI
struct TopView : View{
    @State var search = ""
    @StateObject var TopView = ArrShortcuts()
    var gridItemLayot = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItemLayot, alignment: .leading, spacing: 10, content: {
                    ForEach(search == "" ? TopView.shortCats : TopView.shortCats.filter{$0.name.lowercased().contains(search.lowercased())}){ shortcut in
                        VStack{
                            HStack{
                                Image(systemName: shortcut.icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30 , height: 30)
                                    .foregroundColor(.white)
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            HStack{
                                Text(shortcut.name)
                                Spacer()
                            }
                            HStack{
                                Text("\(shortcut.actions) actions")
                                    .font(.caption)
                                Spacer()
                            }
                        }
                        .frame(width: 130, height: 95)
                        .padding()
                        .background(shortcut.color)
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                        .navigationTitle(Text("All Shortcuts"))
                        .navigationBarItems(
                            leading: Button(action: {}){
                                HStack{
                                    Image(systemName: "chevron.backward")
                                    Text("Shortcuts")
                                }.foregroundColor(.blue)
                            }
                            ,trailing: Button(action:{}){
                                HStack{
                                    Image(systemName: "plus")
                                    
                                }.foregroundColor(.blue)
                            }
                        )
                        
                    }
                }
                )
            }.searchable(text: $search)
        }
    }
}

