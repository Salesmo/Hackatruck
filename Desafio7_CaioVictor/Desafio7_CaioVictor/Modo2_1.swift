//
//  Modo2_1.swift
//  Desafio7_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Modo2_1: View {
    var nome: String
    var body: some View {
        ZStack{
            Color.darkBlue.ignoresSafeArea()
            VStack(){
                Text("Modo 2.1")
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Spacer()
                VStack{
                    Text("Nome: \(nome)")
                }.foregroundStyle(.white).frame(width: 200, height: 100).background(.lightPink).cornerRadius(10)
                Spacer()
            }.padding(.top)
        }
    }
}

#Preview {
    Modo2_1(nome: "")
}
