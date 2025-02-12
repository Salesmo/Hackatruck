//
//  Tocando.swift
//  Desafio8_CaioVictor
//
//  Created by Turma02-2 on 12/02/25.
//

import SwiftUI

struct Tocando: View {
    
    var musica : Song
    
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: musica.capa)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }.frame(width: 200, height: 200)
                    
                    Text(musica.name)
                        .foregroundStyle(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                    Text(musica.artist)
                        .foregroundStyle(.white)
                    Spacer()
                    HStack(spacing: 40){
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                        Image(systemName: "repeat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Tocando(musica: Song(name: "The Kids Aren't Alright", artist: "The Offspring", capa: "https://i.scdn.co/image/ab67616d0000b273cbd2ee7dff77bfb2b5f0af52"))
}
