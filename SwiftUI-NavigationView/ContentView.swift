//
//  ContentView.swift
//  SwiftUI-NavigationView
//
//  Created by Evhen Lukhtan on 30.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userBuy = UserBuy()
    @State var selector: String?
    @State var isShow = false
    
    let coffee = "Coffee"
    let tea = "Tea"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("What you wanna?")
                
//                NavigationLink(destination: { DetailView(text: tea) },
//                               label: { Text(tea) })
//                NavigationLink(destination: { DetailView(text: coffee) }, 
//                               label: { Text(coffee) })
                
//                NavigationLink(
//                    destination: DetailView(text: coffee),
//                    tag: "act1",
//                    selection: $selector,
//                    label: { EmptyView() })
//                
//                NavigationLink(
//                    destination: DetailView(text: tea),
//                    tag: "act2",
//                    selection: $selector,
//                    label: { EmptyView() })
                
                NavigationLink(
                    destination: DetailView(text: tea),
                    isActive: $isShow,
                    label: { EmptyView() })
                
                HStack {
                    Button("Go") {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            //isShow = true
                            isShow.toggle()
                        }
                    }
                }
                
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
