//
//  ContentView.swift
//  WeSplit
//
//  Created by macadmin on 02/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form {
                Section{
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section{
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
            }
            .navigationTitle("Swift Form")        // large title by default
             //.navigationBarTitleDisplayMode(.inline)  // for small title
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
