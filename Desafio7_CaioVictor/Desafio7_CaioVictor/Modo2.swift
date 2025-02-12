//
//  Modo2.swift
//  Desafio7_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Modo2: View {
    
    @State private var nome: String = ""
    
    var body: some View {
        
        ZStack{
            Color.darkBlue.ignoresSafeArea()
            VStack(){
                Text("Modo 2")
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Spacer()
                VStack{
                    Text("Digite seu nome: ").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    TextField("Nome", text: $nome)
                        .padding(.horizontal)
                        .foregroundColor(.black)
                        .background(.white.opacity(0.8))
                        .cornerRadius(10)
                        .frame(width: 200)
                    
                    Text("Seja bem vindo \(nome)")
                    Spacer()
                    NavigationLink(destination: Modo2_1(nome: nome)){
                        Text("Acessar tela")
                            .padding(8)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }.padding()
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 170)
                    .background(.lightPink)
                    .cornerRadius(10)
                Spacer()
            }.padding(.top)
        }
    }
}

#Preview {
    Modo2()
}
