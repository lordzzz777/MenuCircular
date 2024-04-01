//
//  CardView4.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct CardView4: View {
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "football.fill").font(.custom("", size: 300))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView4()
}
