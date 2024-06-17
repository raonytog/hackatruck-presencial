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
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.lightBlue)
            
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
                        .padding()
                    
                    HStack {
                        VStack {
                            if meal.strIngredient1 != nil && meal.strIngredient1 != "" {
                                Text("1 - \(meal.strIngredient1!)")
                            }
                            
                            if meal.strIngredient2 != nil && meal.strIngredient2 != "" {
                                Text("2 - \(meal.strIngredient2!)")
                            }
                            
                            if meal.strIngredient3 != nil && meal.strIngredient3 != "" {
                                Text("3 - \(meal.strIngredient3!)")
                            }
                            
                            if meal.strIngredient4 != nil && meal.strIngredient4 != ""{
                                Text("4 - \(meal.strIngredient4!)")
                            }
                            
                            if meal.strIngredient5 != nil && meal.strIngredient5  != "" {
                                Text("5 - \(meal.strIngredient5!)")
                            }
                            
                            if meal.strIngredient6 != nil && meal.strIngredient6 != "" {
                                Text("6 - \(meal.strIngredient6!)")
                            }
                            
                            if meal.strIngredient7 != nil && meal.strIngredient7 != "" {
                                Text("7 - \(meal.strIngredient7!)")
                            }
                            
                            if meal.strIngredient8 != nil && meal.strIngredient8 != "" {
                                Text("8 - \(meal.strIngredient8!)")
                            }
                            
                            if meal.strIngredient9 != nil && meal.strIngredient9 != "" {
                                Text("9 - \(meal.strIngredient9!)")
                            }
                            
                            if meal.strIngredient10 != nil && meal.strIngredient10 != "" {
                                Text("10 - \(meal.strIngredient10!)")
                            }
                            
                            if meal.strIngredient11 != nil && meal.strIngredient11 != "" {
                                Text("11 - \(meal.strIngredient11!)")
                            }
                            
                            if meal.strIngredient12 != nil && meal.strIngredient12 != ""{
                                Text("12 - \(meal.strIngredient12!)")
                            }
                            
                            if meal.strIngredient13 != nil && meal.strIngredient13 != ""{
                                Text("13 - \(meal.strIngredient13!)")
                            }
                            
                            if meal.strIngredient14 != nil && meal.strIngredient14 != "" {
                                Text("14 - \(meal.strIngredient14!)")
                            }
                            
                            if meal.strIngredient15 != nil && meal.strIngredient15 != "" {
                                Text("15 - \(meal.strIngredient15!)")
                            }
                            
                            if meal.strIngredient16 != nil && meal.strIngredient16 != "" {
                                Text("16 - \(meal.strIngredient16!)")
                            }
                            
                            if meal.strIngredient17 != nil && meal.strIngredient17 != "" {
                                Text("17 - \(meal.strIngredient17!)")
                            }
                            
                            if meal.strIngredient18 != nil && meal.strIngredient18 != "" {
                                Text("18 - \(meal.strIngredient18!)")
                            }
                            
                            if meal.strIngredient19 != nil && meal.strIngredient19 != "" {
                                Text("19 - \(meal.strIngredient19!)")
                            }
                            
                            if meal.strIngredient20 != nil && meal.strIngredient20 != ""{
                                Text("20 - \(meal.strIngredient20!)")
                            }
                        }.padding(.leading)
                        
                        Spacer()
                        
                        VStack {
                            if meal.strMeasure1 != nil && meal.strMeasure1 != ""{
                                Text("1 - \(meal.strMeasure1!)")
                            }
                            
                            if meal.strMeasure2 != nil && meal.strMeasure2 != ""{
                                Text("2 - \(meal.strMeasure2!)")
                            }
                            
                            if meal.strMeasure3 != nil && meal.strMeasure3 != ""{
                                Text("3 - \(meal.strMeasure3!)")
                            }
                            
                            if meal.strMeasure4 != nil && meal.strMeasure4 != ""{
                                Text("4 - \(meal.strMeasure4!)")
                            }
                            
                            if meal.strMeasure5 != nil && meal.strMeasure5 != ""{
                                Text("5 - \(meal.strMeasure5!)")
                            }
                            
                            if meal.strMeasure6 != nil && meal.strMeasure6 != ""{
                                Text("6 - \(meal.strMeasure6!)")
                            }
                            
                            if meal.strMeasure7 != nil && meal.strMeasure7 != ""{
                                Text("7 - \(meal.strMeasure7!)")
                            }
                            
                            if meal.strMeasure8 != nil && meal.strMeasure8 != ""{
                                Text("8 - \(meal.strMeasure8!)")
                            }
                            
                            if meal.strMeasure9 != nil && meal.strMeasure9 != ""{
                                Text("9 - \(meal.strMeasure9!)")
                            }
                            
                            if meal.strMeasure10 != nil && meal.strMeasure10 != ""{
                                Text("10 - \(meal.strMeasure10!)")
                            }
                            
                            if meal.strMeasure11 != nil && meal.strMeasure11 != ""{
                                Text("11 - \(meal.strMeasure11!)")
                            }
                            
                            if meal.strMeasure12 != nil && meal.strMeasure12 != ""{
                                Text("12 - \(meal.strMeasure12!)")
                            }
                            
                            if meal.strMeasure13 != nil && meal.strMeasure13 != ""{
                                Text("13 - \(meal.strMeasure13!)")
                            }
                            
                            if meal.strMeasure14 != nil && meal.strMeasure14 != ""{
                                Text("14 - \(meal.strMeasure14!)")
                            }
                            
                            if meal.strMeasure15 != nil && meal.strMeasure15 != ""{
                                Text("15 - \(meal.strMeasure15!)")
                            }
                            
                            if meal.strMeasure16 != nil && meal.strMeasure16 != ""{
                                Text("16 - \(meal.strMeasure16!)")
                            }
                            
                            if meal.strMeasure17 != nil && meal.strMeasure17 != ""{
                                Text("17 - \(meal.strMeasure17!)")
                            }
                            
                            if meal.strMeasure18 != nil && meal.strMeasure18 != ""{
                                Text("18 - \(meal.strMeasure18!)")
                            }
                            
                            if meal.strMeasure19 != nil && meal.strMeasure19 != ""{
                                Text("19 - \(meal.strMeasure19!)")
                            }
                            
                            if meal.strMeasure20 != nil && meal.strMeasure20 != ""{
                                Text("20 - \(meal.strMeasure20!)")
                            }
                        }
                        .padding(.trailing)
                        
                    }
                }
            }
            
            
            
            Spacer()
        }
    }
}

#Preview {
    MealView(meal: Meal(idMeal: "", strMeal: "", strCategory: "", strArea: "", strInstructions: "", strMealThumb: "", strTags: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "", strIngredient5: "", strIngredient6: "", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "", strMeasure1: "", strMeasure2: "", strMeasure3: "", strMeasure4: "", strMeasure5: "", strMeasure6: "", strMeasure7: "", strMeasure8: "", strMeasure9: "", strMeasure10: "", strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "", strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: "", strMeasure20: ""))
}
