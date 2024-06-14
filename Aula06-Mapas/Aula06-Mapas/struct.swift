//
//  struct.swift
//  Aula06-Mapas
//
//  Created by Turma02-23 on 13/06/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let cordinate: CLLocationCoordinate2D
    let img: String
    let description: String
}

var array = [ Location(name: "Brazil", cordinate: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.31668),                           img: "Brasil", description: "Belo pais maravilhoso brazilllllllllll"),
              
              Location(name: "EUA", cordinate: CLLocationCoordinate2D(latitude: 42.593602, longitude: -102.484793),                img: "EUA", description: "Belo pais maravilhoso demasis os estados unidos da america "),
              
              Location(name: "Japao", cordinate: CLLocationCoordinate2D(latitude: 37.572031, longitude: 137.3606936),               img: "Japao", description: "Belo pais maravilhoso esse pais japones com japao e anime e tals"),
              
              Location(name: "Sudao do Sul", cordinate: CLLocationCoordinate2D(latitude: 7.8404058, longitude: 24.3944533),         img: "SudaoDoSul", description: "Belo pais maravilhoso esse pais ja"),
              
              Location(name: "Africa do Sul", cordinate: CLLocationCoordinate2D(latitude: 30.2958425, longitude: 16.4572404),       img: "AfricaDoSul", description: "Belo pais maravilhoso esse pais japones com japao e anime e tals")
              ]
