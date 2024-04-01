//
//  Home.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 30/3/24.
//

import SwiftUI

struct Home: View {
    @State private var isActivated = false
    @State private var menuVM = MenuViewModel()
   
    var body: some View {
        ZStack {
            menuVM.selectedMenu.menuView
            ZStack {
                Color.black.opacity(isActivated ? 0.2 : 0)
                VStack {
                    Spacer()
                    ZStack {
                        ForEach(0..<5){ item in
// cuando que remos iterar con "menuVM.menu.count", dentro de ForEach
// da la siguiente advertencia
// "Non-constant range: argument must be an integer literal"
// por lo que lo sustitullo por un entero (5)
                           
                                MenuButto(isActivated: self.$isActivated, menuVM: self.menuVM, currentItemIndex: item)
                           
                        }
                        SelectedMenuButto(isActivated: self.$isActivated, menuItem: menuVM.selectedMenu)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(isActivated ? .all : .horizontal)
    }
}

#Preview {
    Home()
}
