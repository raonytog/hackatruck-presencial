//
//  CinzaView.swift
//  Aula04-TabView
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.cinza)
            
            Circle()
                .frame(width: 300)
            
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(.cinza)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
    }
}

#Preview {
    CinzaView()
}
