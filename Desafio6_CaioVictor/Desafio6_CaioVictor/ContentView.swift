//
//  ContentView.swift
//  Desafio6_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            Azul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            Cinza()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            Lista()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
