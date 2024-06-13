//
//  ContentView.swift
//  Aula05-Lista
//
//  Created by Turma02-23 on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var img: String = "https://cdns-images.dzcdn.net/images/cover/8919eee2a1ffe50f8eee6807db7192be/500x500.jpg"
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack { // foto da playlist
                        AsyncImage(url: URL(string: img)) { Result in
                            Result.image?
                                .resizable()
                                .scaledToFit()
                        }
                        .frame(width: 200, height: 200)
                        .padding(10)
                        
                        HStack {// titulo
                            Text("Mitski builded")
                                .font(.largeTitle)
                                .fontDesign(.rounded)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .bold()
                                .padding(10)
                            
                            Spacer()
                        }// fim da foto da playlist
                        
                        HStack { // assinatura da playlist
                            AsyncImage(url: URL(string: img)) {
                                imagem in imagem.image?
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 40, height: 40)
                            .padding(.leading)
                            Text("Mitski builded")
                                .foregroundColor(.white)
                                .fontDesign(.rounded)
                            Spacer()
                        }//fim assinatura da playlist
                        
                        ForEach(array) {
                            song in
                            NavigationLink(destination: MusicaView(musica: song)) {
                                HStack {
                                    AsyncImage(url: URL(string: song.imagem)) {
                                        song in song.image?
                                            .resizable()
                                            .scaledToFit()
                                    }
                                    .frame(width: 60, height: 60)
                                    .padding(.leading)
                                    
                                    VStack {
                                        HStack {
                                            Text(song.nomeMusica)
                                                .fontDesign(.rounded)
                                            Spacer()
                                        }
                                        HStack {
                                            Text(song.cantor)
                                                .fontDesign(.rounded)
                                            Spacer()
                                        }
                                    }
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .frame(width: 20, height: 5)
                                        .foregroundColor(.white)
                                        .padding()
                                }
                            }
                        }// fim do for
                        
                        HStack {
                            Text("Sugeridos")
                                .foregroundColor(.white)
                                .bold()
                                .font(.largeTitle)
                                .fontDesign(.rounded)
                                .padding(.top, 150)
                            Spacer()
                        }
                        
                        ScrollView (.horizontal){
                            HStack {
                                ForEach(array) {
                                    song in
                                    NavigationLink(destination: MusicaView(musica: song)) {
                                        AsyncImage(url: URL(string: song.imagem)) {
                                            song in song.image?
                                                .resizable()
                                                .scaledToFit()
                                            
                                                .frame(width: 200, height: 200)
                                                .padding(2)
                                            
                                        }
                                    }
                                }//fim do for
                            }//hstack
                        }//scrollview
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
