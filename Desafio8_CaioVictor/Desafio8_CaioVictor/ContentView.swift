//
//  ContentView.swift
//  Desafio8_CaioVictor
//
//  Created by Turma02-2 on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var musica: Song = Song(name: "", artist: "", capa: "")
    
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: "https://memeexplicado.com/wp-content/uploads/2024/03/lego-batman-apaixonado-meme.png")) { image in
                            image.resizable()
                                .clipped()
                                .frame(width: 200, height: 200)
                                
                            
                        } placeholder: {
                            ProgressView()
                                .frame(width: 200, height: 200)
                        }
                       
                        HStack{
                            VStack(){
                                Text("HackaFM").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                HStack{
                                    AsyncImage(url: URL(string: "https://memeexplicado.com/wp-content/uploads/2024/03/lego-batman-apaixonado-meme.png")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }.frame(width: 30, height: 30)
                                    
                                    Text("HackaSongs").foregroundStyle(.white)
                                }
                            }
                            Spacer()
                        }.padding(.leading)
                        
                        HStack{
                            VStack(alignment: .leading){
                                ForEach(arrayMusicas) { i in
                                    NavigationLink(destination: Tocando(musica: i)){
                                        HStack{
                                            AsyncImage(url: URL(string: i.capa)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 60, height: 60)
                                            VStack(alignment: .leading){
                                                Text(i.name).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                                Text(i.artist).foregroundStyle(.white)
                                            }
                                            Spacer()
                                            Image(systemName: "ellipsis").foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                            Spacer()
                        }.padding()
                        
                        HStack{
                            Text("Sugeridos")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.white)
                            Spacer()
                        }.padding()
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arraySugeridos) { i in
                                    NavigationLink(destination: Tocando(musica: i)){
                                        VStack{
                                            AsyncImage(url: URL(string: i.capa)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 250, height: 250)
                                            Text(i.name)
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                .foregroundStyle(.white)
                                            Text(i.artist)
                                                .foregroundStyle(.white)
                                        }
                                    }
                                }
                            }.padding(.leading)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
