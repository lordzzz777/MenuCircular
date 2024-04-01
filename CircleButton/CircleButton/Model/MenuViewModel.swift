//
//  MenuViewModel.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 30/3/24.
//

import SwiftUI
import Observation

@Observable
class MenuViewModel {
    var menu: [MenuItems] = [
        MenuItems(color: .red, icon: "figure.walk", menuView: AnyView(HomeNavigations()), selected: true),
        MenuItems(color: .blue, icon: "volleyball.fill", menuView: AnyView(CardView()), selected: false),
        MenuItems(color: .orange, icon: "soccerball", menuView: AnyView(CardView2()), selected: false),
        MenuItems(color: .green, icon: "basketball.fill", menuView: AnyView(CardView3()), selected: false),
        MenuItems(color: .yellow, icon: "football.fill", menuView: AnyView(CardView4()), selected: false)
    ]
    
    var selectedMenu: MenuItems {
        guard let selected = menu.filter({ $0.selected }).first else {
            fatalError("Error")
        }
        return selected
    }
}
