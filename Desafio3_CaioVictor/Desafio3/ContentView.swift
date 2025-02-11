//
//  ContentView.swift
//  Desafio3
//
//  Created by Turma02-2 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                VStack{
                    Image("hacka").resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 100).scaledToFit()
                    Image(systemName: "plus").colorInvert().frame(width: 30, height: 30).background(.blue).cornerRadius(50).offset(x:CGFloat(30), y: CGFloat(-45))
                }
                
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                            Text("Posts")
                        }
                        VStack{
                            Text("12k")
                            Text("Seguidores")
                        }
                        VStack{
                            Text("2k")
                            Text("Seguindo")
                        }
                    }
                    Text("Editar perfil").frame(width: 230,height: 30).background(.gray).cornerRadius(8)
                }
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Nome Sobrenome")
                    Text("Aqui é uma descrição do perfil")
                }
                Spacer()
            }.padding(.bottom, 50)
            
            VStack{
                Rectangle().frame(width:  380, height: 1).foregroundColor(.gray)
                HStack(spacing: 80){
//                    Spacer()
                    Image(systemName: "circle.grid.3x3.fill")
//                    Spacer()
                    Image(systemName: "video.fill")
//                    Spacer()
                    Image(systemName: "person")
//                    Spacer()
                }.padding(.vertical, 20)
                Rectangle().frame(width:  380, height: 1).foregroundColor(.gray)
            }
            VStack{
                HStack{
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                }
                HStack{
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                }
                HStack{
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                    Rectangle().frame(width:  120, height: 120).foregroundColor(.gray)
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
