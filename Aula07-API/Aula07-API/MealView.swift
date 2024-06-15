//
//  MealView.swift
//  Aula07-API
//
//  Created by Turma02-23 on 14/06/24.
//

import SwiftUI

struct MealView: View {
    var meal: Meal
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.indigo, .blue,
                .white]),  startPoint: .top, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: meal.strMealThumb!)) {
                        img in
                        img
                            .image?.resizable()
                            .frame(width: 200, height: 200)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text(meal.strMeal!)
                        .bold()
                        .font(.largeTitle)
                        .fontDesign(.rounded)
                    
                    Text(meal.strCategory!)
                        .font(.caption)
                        .fontDesign(.rounded)
                        .padding(.bottom, 20)
                    
                    Text(meal.strInstructions!)
                        .fontDesign(.rounded)
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    MealView(meal: Meal(idMeal: "", strMeal: "", strCategory: "", strArea: "", strInstructions: "", strMealThumb: "", strTags: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "", strIngredient5: "", strIngredient6: "", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "", strMeasure3: "", strMeasure4: "", strMeasure5: "", strMeasure6: "", strMeasure7: "", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: ""))
}
