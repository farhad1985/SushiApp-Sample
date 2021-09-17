//
//  CounterView.swift
//  SushiApp
//
//  Created by Farhad on 9/17/21.
//

import SwiftUI

struct PropertyProductView: View {
    var body: some View {
        
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(Color("yellowColor"))
            
            Text("5.0")
                .font(.system(size: 16).bold())
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color("orangeColor"))
            
            Text("15 Calories")
                .font(.system(size: 16).bold())
            
            Image(systemName: "clock")
                .foregroundColor(Color("redColor"))
            
            Text("20-25 min")
                .font(.system(size: 16).bold())
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 10)
        
    }
}

struct PropertyProductView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyProductView()
    }
}
