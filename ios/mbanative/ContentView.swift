//
//  ContentView.swift
//  mbanative
//
//  Created by Batuhan on 18.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Here is BMA")
                NavigationLink(destination: SecondView()) {
                    Text("Go to React Native app")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("First Screen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
