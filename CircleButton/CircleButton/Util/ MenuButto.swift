//
//   MenuButto.swift
//  CircleButton
//
//  Created by Esteban Perez Castillejo on 30/3/24.
//

import SwiftUI

struct MenuButto: View {
    
    @Binding var isActivated: Bool
    @State  var menuVM: MenuViewModel
    
    var currentItemIndex: Int
    
    var body: some View {
        let menuItem = menuVM.menu[currentItemIndex]
        return Circle()
            .fill(menuItem.color)
            .frame(width: isActivated ? 50 : 65 , height: isActivated ? 50 : 65)
            .overlay(Image(systemName: menuItem.icon)
                .shadow(radius: 5)
            )
            .foregroundStyle(Color.white)
            .offset(x: isActivated ? calcOffset().x: 0, y: isActivated ? calcOffset().y : -10) // Actualizar compensación cuando se activa
            .onTapGesture {
                withAnimation(.spring()){
                    self.isActivated.toggle()
                    self.updateSelectad()
                    // update selected value
                }
            }
    }
    
    func updateSelectad(){
        let menuItem = menuVM.menu[currentItemIndex]
        for i in 0..<menuVM.menu.count{
            menuVM.menu[i].selected = menuItem.id == menuVM.menu[i].id
        }
    }
    
    func calcOffset() -> (x: CGFloat, y: CGFloat){
        switch menuVM.menu.count{
        case 2:
            switch currentItemIndex{
            case 0:
                return (-70, -70)
            default:
                return (70, -70)
            }
        case 3:
            switch currentItemIndex{
            case 0:
                return (-70, -70)
            case 1:
                return (0, -70)
            default:
                return (70, -70)
            }
        case 4:
            switch currentItemIndex{
            case 0:
                return (-90, -40)
            case 1:
                return (-45, -110)
            case 2:
                return (45, -110)
            default:
                return (90, -40)
            }
        default: // casa 5
            switch currentItemIndex{
            case 0:
                return (-100, -20)
            case 1:
                return (-70, -80)
            case 2:
                return (0, -110)
            case 3:
                return (70, -80)
            default:
                return ( 100, -20)
            }
        }
    }
}

struct SelectedMenuButto: View {
    @Binding var isActivated: Bool
    var menuItem: MenuItems
    var body: some View {
        Circle()
            .fill(menuItem.color)
            .frame(width: isActivated ? 50 : 65 , height: isActivated ? 50 : 65)
            .overlay(Image(systemName: menuItem.icon)
                .shadow(radius: 5)
            )
            .foregroundStyle(Color.white)
            .offset(x: 0,y: isActivated ? -20 : -10)
            .onTapGesture {
                withAnimation(.spring()){
                    self.isActivated.toggle()
                }
            }
    }
}

