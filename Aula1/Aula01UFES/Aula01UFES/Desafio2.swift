//
//  Desafio2.swift
//  Aula01UFES
//
//  Created by Turma02-23 on 06/06/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        HStack {
            HStack {
                Image("hackatruck").resizable().frame(width: 150, height:150).cornerRadius(100)
            }
            .padding(20)
            
            VStack {
                Text("Hackatruck")
                    .foregroundColor(.red)
                
                Text("72 Universidades")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Text("5 Regiões do Brasil")
                    .foregroundColor(.yellow)
            }

        }
    }
}

#Preview {
    Desafio2()
}
