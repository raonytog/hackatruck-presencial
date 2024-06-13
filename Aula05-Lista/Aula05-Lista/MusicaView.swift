//
//  MusicaView.swift
//  Aula05-Lista
//
//  Created by Turma02-23 on 12/06/24.
//

import SwiftUI

struct MusicaView: View {
    var musica: Musica
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            VStack {
                Spacer()
                AsyncImage(url: URL(string: musica.imagem)) {
                    song in song.image?
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 200, height: 200)
                .padding(.leading)
                
                Text(musica.nomeMusica)
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    .bold()
                
                Text(musica.cantor)
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    .bold()
                
                Spacer()
                
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .padding()
                    
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .padding()
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 55)
                        .padding()
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .padding()
                    
                    Image(systemName: "repeat")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .padding()
                }
                .foregroundColor(.white)
                .aspectRatio(contentMode: .fit)
                
                Spacer()

            }
        }
    }
}

#Preview {
    MusicaView(musica: Musica(nomeMusica: "Baby", cantor: "Justin Bieber", imagem: "https://cdns-images.dzcdn.net/images/cover/8919eee2a1ffe50f8eee6807db7192be/500x500.jpg"))
}
