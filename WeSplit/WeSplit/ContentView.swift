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
    @State private var numberOfPeopleSelected = 2
    @State private var tipPercentage = 10
    var tipPercentages = [10, 20, 30, 0]
    
    var totalAmountPerPerson: Double {
        let numberOfPeople = Double(numberOfPeopleSelected + 2)
        let tipAmount: Double = amountValue / 100 * Double(tipPercentage)
        let totalAmount = amountValue + tipAmount
        return (totalAmount / numberOfPeople)
    }
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("", value: $amountValue, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker.init("Number of people", selection: $numberOfPeopleSelected) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select Tip Percentage")
                }
                Section {
                    Text(totalAmountPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
