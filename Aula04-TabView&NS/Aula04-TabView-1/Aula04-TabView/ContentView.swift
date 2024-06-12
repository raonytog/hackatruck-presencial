//
//  ContentView.swift
//  Aula04-TabView
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                
                TabView {
                    RosaView()
                        .badge(2)
                        .tabItem {
                            Label("Rosa", systemImage: "paintbrush.fill")
                        }
                    
                    BlueView()
                        .badge(2)
                        .tabItem {
                            Label("Rosa", systemImage: "paintbrush.pointed.fill")
                        }
                    
                    CinzaView()
                        .tabItem {
                            Label("Cinza", systemImage: "paintpalette.fill")
                        }
                    
                    ListaView()
                        .tabItem {
                            Label("Lista", systemImage: "list.bullet")
                        }
                        
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
