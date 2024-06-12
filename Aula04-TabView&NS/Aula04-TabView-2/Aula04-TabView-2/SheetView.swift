//
//  SheetView.swift
//  Aula04-TabView-2
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.darkblue)
            
            VStack {
                Text("Sheet View")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
                
                VStack {
                    Text("Nome: Raony")
                    Text("Sobrenome: Togneri")
                }
                .foregroundColor(.white)
                .frame(width: 250, height: 120)
                .background(.rosa)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SheetView()
}
