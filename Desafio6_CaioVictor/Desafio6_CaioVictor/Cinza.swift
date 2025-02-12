//
//  Cinza.swift
//  Desafio6_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.top)
            Circle().frame(width: 300)
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundStyle(.gray)
                
        }
    }
}

#Preview {
    Cinza()
}
