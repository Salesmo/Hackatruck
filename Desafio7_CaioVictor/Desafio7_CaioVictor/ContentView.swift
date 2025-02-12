//
//  ContentView.swift
//  Desafio7_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mostrarModo3 = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.darkBlue.ignoresSafeArea()
                VStack(alignment: .center){
                    Image("hackatruck").resizable().scaledToFit().frame(width: 300)
                    Spacer()
                    VStack{
                        NavigationLink(destination: Modo1()){
                            Text("Modo 1").foregroundStyle(.white)
                        }.frame(width: 200, height: 70).background(.lightPink).cornerRadius(10)
                        NavigationLink(destination: Modo2()){
                            Text("Modo 2").foregroundStyle(.white)
                        }.frame(width: 200, height: 70).background(.lightPink).cornerRadius(10)
                        Button("Modo 3"){
                            mostrarModo3.toggle()
                        }.foregroundStyle(.white)
                            .frame(width: 200, height: 70)
                            .background(.lightPink)
                            .cornerRadius(10)
                            .sheet(isPresented: $mostrarModo3) {
                                        Modo3()
                                    }
                    }
                    Spacer()
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
