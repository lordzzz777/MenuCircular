//
//  CardView3.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct CardView3: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "basketball.fill").font(.custom("", size: 300))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView3()
}
