//
//  CardView2.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct CardView2: View {
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "soccerball").font(.custom("", size: 300))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView2()
}
