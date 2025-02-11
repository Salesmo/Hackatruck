//
//  ContentView.swift
//  Desafio1_CaioVictor
//
//  Created by Turma02-2 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack{
                Rectangle().frame(width:  100, height: 100).foregroundColor(.red)
                Spacer()
                Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100).foregroundColor(.blue)
            }
            Spacer()
            HStack{
                Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100).foregroundColor(.green)
                Spacer()
                Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100).foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
