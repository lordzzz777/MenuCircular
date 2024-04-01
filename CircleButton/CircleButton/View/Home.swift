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
                        ForEach(menuVM.menu, id: \.id){ item in
                            MenuButto(isActivated: self.$isActivated, menuVM: self.menuVM, currentItemIndex: item.id)
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
