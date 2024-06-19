//
//  QuitandaView.swift
//  Aula08-API_propria
//
//  Created by Turma02-23 on 19/06/24.
//

import SwiftUI

struct QuitandaView: View {
    var frutas: Frutas
    
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            
            VStack {
                
            }
        }
       
    }
}

#Preview {
    QuitandaView(quitanda: Quintanda(frutas: []))
}
