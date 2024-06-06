//
//  ContentView.swift
//  Aula01UFES
//
//  Created by Turma02-23 on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                }
                Spacer()
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
            .padding()
        }
        
        Spacer()
        
        VStack {
            HStack {
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.green)
                }
                Spacer()
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
