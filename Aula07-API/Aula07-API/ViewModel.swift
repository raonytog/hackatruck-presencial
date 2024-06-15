//
//  ViewModel.swift
//  Aula07-API
//
//  Created by Turma02-23 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var meals : [Meal] = []
    
    func fetchMeal() {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?f=r") else {
            return
        }
        
        let taks = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.meals = jsonDecodificado.meals
                }
            } catch {
                print(error)
            }
        }
        
        taks.resume()
    }
}
