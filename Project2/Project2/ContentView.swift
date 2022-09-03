//
//  ContentView.swift
//  Project2
//
//  Created by macadmin on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                ForEach(countries, id: \.self) { country in
                    Button{
                        print(country)
                    } label: {
                        Image(country)
                    }
                    
                }
            }
        }
        
    }
    
    func executeDelete() {
        print("Delete")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

