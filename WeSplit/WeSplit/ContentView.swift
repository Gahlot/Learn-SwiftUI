//
//  ContentView.swift
//  WeSplit
//
//  Created by macadmin on 02/09/22.
//
//views are a function of their state

import SwiftUI

struct ContentView: View {
    @State private var amountValue = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 10
    var tipPercentages = [10, 20, 30, 0]
    var body: some View {
        Form {
            Section {
                TextField("", value: $amountValue, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            Section {
                Text(amountValue, format: .currency(code: Locale.current.currencyCode ?? "USD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
