//
//  struct.swift
//  Aula05-Lista
//
//  Created by Turma02-23 on 12/06/24.
//

import Foundation

struct Musica : Identifiable {
    var id = UUID()
    var nomeMusica: String
    var cantor: String
    var imagem: String
}

var array = [
    Musica(nomeMusica: "CrackBaby", cantor: "Mitski", imagem: "https://cdns-images.dzcdn.net/images/cover/8919eee2a1ffe50f8eee6807db7192be/500x500.jpg"),
    
    Musica(nomeMusica: "Me and my husband", cantor: "Mitski", imagem: "https://highwayqueens.com/wp-content/uploads/2018/08/img_1018.jpg?w=1240"),
    
    Musica(nomeMusica: "My love all mine", cantor: "Mitski", imagem: "https://fiu-original.b-cdn.net/fontsinuse.com/use-images/N198/198810/198810.jpeg?filename=IMG_9093.jpg"),
    
    Musica(nomeMusica: "First love/Late Spring", cantor: "Mitski", imagem: "https://monkeybuzz.com.br/wp-content/uploads/2016/07/a0571397198_10-57840f4c68e40.jpg"),
    
    Musica(nomeMusica: "My love all mine", cantor: "Mitski", imagem: "https://cdns-images.dzcdn.net/images/cover/8919eee2a1ffe50f8eee6807db7192be/500x500.jpg"),
    
    Musica(nomeMusica: "My love all mine", cantor: "Mitski", imagem: "https://fiu-original.b-cdn.net/fontsinuse.com/use-images/N198/198810/198810.jpeg?filename=IMG_9093.jpg"),
    
    Musica(nomeMusica: "First love/Late Spring", cantor: "Mitski", imagem: "https://monkeybuzz.com.br/wp-content/uploads/2016/07/a0571397198_10-57840f4c68e40.jpg"),
    
    Musica(nomeMusica: "First love/Late Spring", cantor: "Mitski", imagem: "https://monkeybuzz.com.br/wp-content/uploads/2016/07/a0571397198_10-57840f4c68e40.jpg"),
    
    Musica(nomeMusica: "Me and my husband", cantor: "Mitski", imagem: "https://highwayqueens.com/wp-content/uploads/2018/08/img_1018.jpg?w=1240"),
    
    Musica(nomeMusica: "Me and my husband", cantor: "Mitski", imagem: "https://highwayqueens.com/wp-content/uploads/2018/08/img_1018.jpg?w=1240")
    
]
