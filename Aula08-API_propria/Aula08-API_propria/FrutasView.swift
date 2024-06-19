//
//  FrutasView.swift
//  Aula08-API_propria
//
//  Created by Turma02-23 on 19/06/24.
//

import SwiftUI

struct FrutasView: View {
    var frutas: [Frutas]
    
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            
            ScrollView {
                VStack {
                    Spacer()
                    
                    Text("Lista de frutas")
                        .bold()
                        .font(.largeTitle)
                        .fontDesign(.rounded)
                        .foregroundColor(.indigo)
                    
                    ForEach(frutas, id: \.self) { fruit in
                        Text(fruit.nome!)
                            .padding(.top)
                            .bold()
                            .font(.largeTitle)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                        
                        AsyncImage(url: URL(string: fruit.foto!)) {
                            img in
                            img
                                .image?.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(10)
                                .padding(.bottom, 80)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    FrutasView(frutas: [
        Frutas(nome: "uva", foto: "https://www.oceandrop.com.br/media/pdp-seo/blog-ocean/beneficios_da_uva.jpg"),
        
        Frutas(nome: "banana", foto: "https://upload.wikimedia.org/wikipedia/commons/a/af/Bananas_%28Alabama_Extension%29.jpg")])
}
