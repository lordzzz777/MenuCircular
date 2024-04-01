//
//  CardView.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 31/3/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "volleyball.fill").font(.custom("", size: 300))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CardView()
}
