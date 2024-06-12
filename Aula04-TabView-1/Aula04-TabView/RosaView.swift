//
//  RosaView.swift
//  Aula04-TabView
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .foregroundColor(.rosa)
            
            Circle()
                .frame(width: 300)
            
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundColor(.rosa)
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
            
        }
    }
}

#Preview {
    RosaView()
}
