//
//  ContentView.swift
//  Aula04-TabView-2
//
//  Created by Turma02-23 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showing: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.darkblue)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 280)
                        .rotationEffect(Angle(degrees: 4.5))
//                        .position(x: 190, y: 50)
                    
                    Spacer()
                    
                    NavigationLink(destination: mod1View()) {
                        Text("Modulo 1")
                    }
                    .frame(width: 200, height: 70)
                    .background(.rosa)
                    .foregroundColor(.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        
                    NavigationLink(destination: mod2View()) {
                        Text("Modulo 2")
                    }
                    .frame(width: 200, height: 70)
                    .background(.rosa)
                    .foregroundColor(.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    Button("Modulo 3")  {
                        showing = true
                    }
                    .sheet(isPresented: $showing) {
                        SheetView()
                    }
                    .frame(width: 200, height: 70)
                    .background(.rosa)
                    .foregroundColor(.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
