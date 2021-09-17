//
//  MenuClass.swift
//  SushiApp
//
//  Created by Farhad on 9/14/21.
//

import SwiftUI

struct MenuClass: View {
    
    let item: Menu
    
    var body: some View {
        HStack {
            item.isActive ? Circle()
                .foregroundColor(Color("orangeColor"))
                .frame(width: 10, height: 10) : nil
            
            Text(item.title)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(item.isActive ? Color.white : Color.clear)
        .cornerRadius(8)
        
    }
}

struct MenuClass_Previews: PreviewProvider {
    static var previews: some View {
        let item = Menu(isActive: true, title: "Sushi")
        MenuClass(item: item)
    }
}
