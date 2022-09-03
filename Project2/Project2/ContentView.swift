//
//  ContentView.swift
//  Project2
//
//  Created by macadmin on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            VStack(spacing: 0) {
                Color.red
                Color.blue
                Color(red: 1, green: 1, blue: 0)
            }
            
            
            Text("Hello, world!")
                .padding(50)
                .foregroundStyle(.secondary)
                .background(.ultraThinMaterial)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

