//
//  ContentView.swift
//  Aula02
//
//  Created by Turma02-23 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Raony"
    @State private var showing = false
    var body: some View {
        
        ZStack { // tela
            Image("foto")
                .resizable()
                .frame(width: .infinity, height: .infinity)
                .opacity(0.2)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ZStack { // mensagens
                HStack {
                    VStack {
                        Text("Bem vindo, \(name)")
                            .font(.largeTitle)
                            .bold()
                        
                        TextField("", text: $name)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        Image("logo")
                            .resizable()
                            .frame(width: 300, height: 100)
                            .shadow(radius: 10)
                        
                        Image("truck")
                            .resizable()
                            .frame(width: 300, height: 100)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        Button("Entrar") {
                            showing = true
                        }
                        .alert(isPresented: $showing) {
                            Alert(title: Text("ALERTA!"), 
                                  message: Text("Voce esta iniciando o desafio!"),
                                  dismissButton: .default(Text("Vamos la!")))
                           
                        }
                    }
                }
            }
        }
    }
}
    
    
    #Preview {
        ContentView()
    }
