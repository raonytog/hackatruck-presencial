//
//  ContentView.swift
//  Aula08-API_propria
//
//  Created by Turma02-23 on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List(vm.quit, id: \.self) { quitandas in
                        NavigationLink(destination: FrutasView(frutas: quitandas.frutasDisponiveis)){
                            VStack {
                                Text(quitandas.nomeQuitanda!)
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.title)
                                    .fontDesign(.rounded)
                                
                                Text(quitandas.enderecoQuitanda!)
                                    .foregroundColor(.black)
                                    .font(.caption)
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(.brown)
                    .navigationTitle(Text("Quitandas"))
                    
                    
                }
                .onAppear() {
                    vm.fetchQuitanda()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
