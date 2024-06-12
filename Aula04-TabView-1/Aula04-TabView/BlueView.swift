//
//  BlueView.swift
//  Aula04-TabView
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.azul)
            
            Circle()
                .frame(width: 300)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .foregroundColor(.azul)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
    }
}

#Preview {
    BlueView()
}
