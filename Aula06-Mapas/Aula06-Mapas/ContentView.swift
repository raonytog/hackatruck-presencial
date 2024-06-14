//
//  ContentView.swift
//  Aula06-Mapas
//
//  Created by Turma02-23 on 13/06/24.
//


import SwiftUI
import MapKit

struct ContentView: View {
    @State private var paisNome: String = "Brazil"
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
        span: MKCoordinateSpan(latitudeDelta: 35, longitudeDelta: 35)))

    
    var body: some View {
        NavigationStack {
            ZStack {
                Map(position: $position) {
                    ForEach(array) {
                        pais in Annotation("\(pais.name)", coordinate: pais.cordinate) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20)
                                .foregroundColor(.red)
                        }
                    }
                }
                    .ignoresSafeArea()
                
                
                VStack {
                    VStack {
                        Text("World map")
                            .font(.largeTitle)
                            .fontDesign(.rounded)
                            .bold()
                        
                        Text(paisNome)
                            .bold()
                    }
                    .frame(width: 400, height: 100, alignment: .top)
                    .background(Color(.white))
                    .opacity(0.6)
                    
                    Spacer()
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (array) {
                                pais in Image(pais.img)
                                    .resizable()
                                    .frame(width: 120, height: 70)
                                    .onTapGesture {
                                        paisNome = pais.name
                                        position =  MapCameraPosition.region(
                                            MKCoordinateRegion(
                                                center: CLLocationCoordinate2D(latitude: pais.cordinate.latitude, longitude: pais.cordinate.longitude),
                                                span: MKCoordinateSpan(latitudeDelta: 35, longitudeDelta: 35)))
                                    }
                                        
    
                            }
                        }
                    }
                    .padding(10)
                    

                    
                    
                    }
                }
            }
        }
    }


#Preview {
    ContentView()
}
