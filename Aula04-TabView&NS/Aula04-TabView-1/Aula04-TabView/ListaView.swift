//
//  ListaView.swift
//  Aula04-TabView
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                List () {
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }
                
                .navigationTitle("List")
            }
        }
    }
}

#Preview {
    ListaView()
}
