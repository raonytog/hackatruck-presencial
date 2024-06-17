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
                    .background(.lightBlue)
                    .navigationTitle(Text("Meal's list"))
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
