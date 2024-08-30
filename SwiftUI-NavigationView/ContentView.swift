//
//  ContentView.swift
//  SwiftUI-NavigationView
//
//  Created by Evhen Lukhtan on 30.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userBuy = UserBuy()
    
    let coffee = "Coffee"
    let tea = "Tea"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("What you wanna?")
                
                NavigationLink(destination: { DetailView(text: tea) },
                               label: { Text(tea) })
                
                NavigationLink(destination: { DetailView(text: coffee) }, 
                               label: { Text(coffee) })
                
                Text("You choose = \(userBuy.cap) drink(s)")
                
                .navigationTitle("Menu")
                .navigationBarTitleDisplayMode(.large)
            }
        }
        .environmentObject(userBuy)
        
    }
}

#Preview {
    ContentView()
}
