//
//  ContentView.swift
//  Project2
//
//  Created by macadmin on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Delete All", role: .destructive ,action: executeDelete)
            
            Button("Button 1") { }
            .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
            .buttonStyle(.bordered)
            Button("Button 3") { }
            .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
            .buttonStyle(.borderedProminent)
            
            //Custtom Button
            Button {
                print("Custom Button")
            } label: {
                Text("Custom Button")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    
            }
            
            Image(systemName: "pencil")
                .frame(width: 60, height: 60, alignment: .center)
            
            Button {
                print("Image Button")
            } label: {
                Image(systemName: "pencil")
            }
            
            Button {
                print("Image with Text Button")
            } label: {
                Label("Click Me", systemImage: "pencil")
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

