//
//  Rosa.swift
//  Desafio6_CaioVictor
//
//  Created by Turma02-2 on 11/02/25.
//

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack{
            Color.pink.edgesIgnoringSafeArea(.top)
            Circle().frame(width: 300)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundStyle(.pink)
                
        }
    }
}

#Preview {
    Rosa()
}
