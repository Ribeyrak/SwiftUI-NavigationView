//
//  DetailView.swift
//  SwiftUI-NavigationView
//
//  Created by Evhen Lukhtan on 30.08.2024.
//

import SwiftUI

// New version
struct DetailView: View {
    @Environment(\.dismiss) var presentation
    @EnvironmentObject var userBuy: UserBuy
    
    var text: String
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Buy \(text) \(userBuy.cap) ea")
            
                .navigationBarItems(
                    leading:
                        Button("to Main") {
                            presentation.callAsFunction()
                        },
                    trailing:
                        HStack {
                            Button("-") {
                                guard userBuy.cap > 0 else { return }
                                userBuy.cap -= 1
                            }
                            
                            Button("+") { userBuy.cap += 1 }
                        })
        }
        .navigationBarBackButtonHidden()
        .onAppear() { userBuy.cap = 0 }
    }
}
