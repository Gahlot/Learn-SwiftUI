//
//  ContentView.swift
//  WeSplit
//
//  Created by macadmin on 02/09/22.
//
//views are a function of their state

import SwiftUI

struct ContentView: View {
    var array = ["Mahesh", "Akshay", "Li xiao"]
    @State private var selectedItem = "Mahesh"
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your Name", selection: $selectedItem) {
                    ForEach.init(array, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
