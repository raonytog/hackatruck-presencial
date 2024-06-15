//
//  ContentView.swift
//  Aula07-API
//
//  Created by Turma02-23 on 14/06/24.
//

import SwiftUI


struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List(vm.meals, id: \.self) { meal in
                        NavigationLink(destination: MealView(meal: meal)) {
                            Text(meal.strMeal!)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .navigationTitle(Text("Meal's list"))
                    .background(LinearGradient(gradient:
                                                Gradient(colors: [
                                                    .indigo,
                                                    .lightBlue,
                                                    .white
                                                ]), startPoint: .top,
                                               endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                }
                .onAppear() {
                    vm.fetchMeal()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
