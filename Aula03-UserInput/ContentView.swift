//
//  ContentView.swift
//  Aula03-UserInput
//
//  Created by Turma02-23 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var color: Color = .pink
    
    @State var peso: String = ""
    @State var altura: String = ""
    @State var resultado: String = "Insira os valores!"
    
    @State var conta: Float = 0
    
    @State var showing: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
                
            
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)

                    
                TextField("Peso", text: $peso)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 30)
                    .background(Color(.white))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding()
                    
                
                TextField("Altura", text: $altura)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 30)
                    .background(Color(.white))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .padding()

                
                Button("Calcular") {
                    showing = true
                    if let pesoF = Float(peso), let alturaF = Float(altura) {
                        conta = pesoF / (alturaF * alturaF)
                        
                        if (conta < 18.5) {
                            resultado = "Baixo peso"
                            
                        } else if (conta < 25) {
                            resultado = "Normal"
                            
                        } else if (conta < 30) {
                            resultado = "Sobrepeso"
                            
                        } else if (conta > 30){
                            resultado = "Obesidade"
                        } else {
                            resultado = "Erro!"
                        }
                    }
                }
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(Color(.blue))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text(resultado)
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Spacer()
                
                Image("tabela")
                    .resizable()
                    .frame(width: 500, height: 210, alignment: .bottom)
                    .shadow(radius: 30)
                    
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
