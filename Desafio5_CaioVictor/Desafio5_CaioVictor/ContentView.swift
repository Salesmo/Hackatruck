//
//  ContentView.swift
//  Desafio5_CaioVictor
//
//  Created by Turma02-2 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    //Valores
    @State private var distancia: Float = 0.0
    @State private var tempo: Float = 0.0
    @State private var resultado: Float = 0.0
    
    //Controles
    @State private var fundo: Color = .gray
    @State private var imagem: String = "Nenhum"
    
    var body: some View {
        
        ZStack {
            fundo.ignoresSafeArea()
            VStack {
                VStack (spacing: 10){
                    VStack(alignment: .center){
                        Text("Digite a distância (km)")
                        TextField("Distancia em km", value: $distancia, format: .number)
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .padding()
                            .background(.white.opacity(0.8))
                            .cornerRadius(10)
                            .frame(width: 100)
                    }
                    
                    VStack(alignment: .center){
                        Text("Digite o tempo (h))")
                        TextField("Tempo em horas", value: $tempo, format: .number)
                            .keyboardType(.numberPad)
                            .textContentType(.oneTimeCode)
                            .padding()
                            .background(.white.opacity(0.8))
                            .cornerRadius(10)
                            .frame(width: 100)
                    }
                    Spacer()
                    
                    Button("Calcular"){
                        resultado = distancia/tempo
                        
                        if resultado < 10.0{
                            fundo = .verdeClaro
                            imagem = "Tartaruga"
                        }else if resultado < 30{
                            fundo = .azulClaro
                            imagem = "Elefante"
                        }else if resultado < 70{
                            fundo = .laranjaClaro
                            imagem = "Avestruz"
                        }else if resultado < 90{
                            fundo = .amareloClaro
                            imagem = "Leão"
                        }else if resultado <= 130{
                            fundo = .vermelhoClaro
                            imagem = "Guepardo"
                        }else{
                            fundo = .gray
                            imagem = "Nenhum"
                        }
                        
                    }.foregroundColor(.white).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50).background(.black.opacity(0.8)).cornerRadius(20)
                }
                .frame(height: 250)
                .padding()
                
                Spacer()
                
                Text("\(resultado) Km/h").font(.title).bold()
                
                Spacer()
                
                Image(imagem)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                VStack{
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Tartaruga")
                            Text("Elefante")
                            Text("Avestruz")
                            Text("Leão")
                            Text("Guepardo")
                        }
                        VStack(alignment: .center){
                            Text("(0 - 9.9km/h)")
                            Text("(10 - 29.9km/h)")
                            Text("(30 - 69.9km/h)")
                            Text("(70 - 89.9km/h)")
                            Text("(90 - 130km/h)")
                        }
                        VStack(alignment: .trailing){
                            Circle().foregroundColor(.verdeClaro)
                            Circle().foregroundColor(.azulClaro)
                            Circle().foregroundColor(.laranjaClaro)
                            Circle().foregroundColor(.amareloClaro)
                            Circle().foregroundColor(.vermelhoClaro)
                        }.frame(width: 20, height: 100)
                    }
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 150)
                .background(.black.opacity(0.9))
                .cornerRadius(20)
                
               
                
                
                
            }
        }
        //.padding()
        
    }
}

#Preview {
    ContentView()
}
