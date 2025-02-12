//
//  Lista.swift
//  Desafio6_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        List {
            Section{
                LabeledContent("Item 1", value: "A")
                Text("Exemplo")
                Button("Invite a friend") {}
                
                HStack{
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Azul")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Cinza")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            } header: {
                Text("Titulo")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }.headerProminence(.increased)
        }
    }
}

#Preview {
    Lista()
}
