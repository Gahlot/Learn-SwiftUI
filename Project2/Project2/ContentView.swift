//
//  ContentView.swift
//  Project2
//
//  Created by macadmin on 03/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                self.showAlert = true
            }
            .alert("Imp Message", isPresented: $showAlert) {
                Button("Cancel", role: .cancel) {
                    
                }
                Button("Delete", role: .destructive) {
                    
                }
            } message: {
                Text("This is a message")
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

