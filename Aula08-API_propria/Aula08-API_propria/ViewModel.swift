//
//  ViewModel.swift
//  Aula08-API_propria
//
//  Created by Turma02-23 on 19/06/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var quit : [Quitanda] = []
    
    func fetchQuitanda() {
        guard let url = URL(string: "http://127.0.0.1:1880/buscar") else {
            return
        }
        
        let taks = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([Quitanda].self, from: data)
                
                DispatchQueue.main.async {
                    self?.quit = jsonDecodificado
                }
            } catch {
                print(error)
            }
        }
        
        taks.resume()
    }
}
