//
//  Model.swift
//  Aula08-API_propria
//
//  Created by Turma02-23 on 19/06/24.
//

import Foundation

struct Frutas: Decodable, Hashable {
    var nome: String?
    var foto: String?
}

struct Quitanda: Decodable, Hashable {
    var nomeQuitanda: String?
    var enderecoQuitanda: String?
    var frutasDisponiveis: [Frutas] = []
}

struct API: Decodable, Hashable {
    var quitandas:  [Quitanda] = []
}
