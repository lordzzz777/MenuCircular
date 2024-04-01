//
//  HomeNavigations.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct HomeNavigations: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                Circle().frame(width: 300)
                    .foregroundStyle(.red)
                Image(systemName: "figure.walk").font(.custom("", size: 200))
                    .foregroundStyle(.white)
                Text("Esta la primera Pagina").padding(.top, 370)
                    .bold()
            }
           
            .navigationTitle("Menu Circular")
            .toolbar{
                ToolbarItem(placement: .automatic, content: {
                    NavigationLink(destination: CardView0()) {
                        Text("Push")
                    }
                })
            }
        })
        
    }
}

#Preview {
    HomeNavigations()
}
