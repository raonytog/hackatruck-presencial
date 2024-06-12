//
//  mod2View.swift
//  Aula04-TabView-2
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct mod2View: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.darkblue)
                
                VStack {
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    
                    VStack {
                        TextField("Digite seu nome", text: $name)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                        Text("Bem vindo, \(name)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        NavigationLink(destination: volteView(nome: name)) {
                            Text("Acessar Tela")
                                .frame(width: 150, height: 40)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(5)
                        }
                    }
                    .foregroundColor(.rosa)
                    .frame(width: 300, height: 150)
                    .background(.rosa)
                    .cornerRadius(5)
            
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    mod2View()
}
