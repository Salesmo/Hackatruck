//
//  ContentView.swift
//  Desafio2_CaioVictor
//
//  Created by Turma02-2 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            HStack{
                Image("hacka").resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 150)
                Spacer()
                VStack (spacing: 10){
                    Text("Hackatruck").foregroundStyle(Color.red)
                    Text("Universidades").foregroundStyle(Color.blue)
                    Text("Cinco regiões do Brasil").foregroundStyle(Color.yellow)
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
