//
//  Desafio3.swift
//  Aula01UFES
//
//  Created by Turma02-23 on 06/06/24.
//

import SwiftUI

struct Desafio3: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack { // foto de perfil
                    Circle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                        .padding(20)
                        .overlay (alignment: .bottomTrailing) {
                            Circle()
                                .frame(maxWidth: 30, maxHeight: .infinity, alignment: .bottomLeading)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                }
                
                VStack { // statistica
                    HStack {
                        VStack {
                            Text("8").bold()
                            Text("Posts").font(.caption)
                        }
                        
                        VStack {
                            Text("12k").bold()
                            Text("Seguidores").font(.caption)
                        }
                        
                        VStack {
                            Text("2k").bold()
                            Text("Seguindo").font(.caption)
                        }
                    }
                    
                    .padding(20)
                    Text("Editar Perfil")
                        .frame(width: 200)
                        .background(.gray)
                        .cornerRadius(8)
                }
            }
            
            VStack { // name
                Text("Nome Sobrenome")
                    .bold()
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("iejrhuqwygrtguiqhui")
                    .font(.caption)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            VStack { // linha
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
            }
            
            VStack { // icons
                HStack {
                    VStack {
                        Image("tab")
                            .resizable()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 35)
                    }
                    .padding(10)
                }
            }
            
            VStack { // feed
                HStack {
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                }
                
                HStack {
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                }
                
                HStack {
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: 130, height: 120)
                        .foregroundColor(.gray)
                    
                }
                
            }
            
            
            
            
            // fim da tela
        }
    }
}

#Preview {
    Desafio3()
}
