//
//  CarView0.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct CardView0: View {
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "figure.run").font(.custom("", size: 300))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView0()
}
