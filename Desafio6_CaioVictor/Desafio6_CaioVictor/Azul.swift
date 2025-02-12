//
//  Azul.swift
//  Desafio6_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.top)
            Circle().frame(width: 300)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundStyle(.blue)
                
        }
    }
}

#Preview {
    Azul()
}
