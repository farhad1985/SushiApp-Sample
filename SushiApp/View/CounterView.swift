//
//  CounterView.swift
//  SushiApp
//
//  Created by Farhad on 9/17/21.
//

import SwiftUI

struct CounterView: View {
    @State var count = 0
    
    var body: some View {
        HStack {
            
            Button(action: decrease,
                   label: {
                Image(systemName: "minus")
                    .font(.system(size: 24))
                    .foregroundColor(Color("blackColor"))
            })
            
            Spacer().frame(width: 20)
            
            Text("\(count)")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color("blackColor"))
            
            Spacer().frame(width: 20)
            
            Button(action: increase,
                   label: {
                Image(systemName: "plus")
                    .font(.system(size: 24))
                    .foregroundColor(Color("blackColor"))
            })
        }
        .padding(.horizontal, 40)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(40)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 10)
    }
    
    private func decrease() {
        guard count > 0 else { return }
        count -= 1
    }
    
    private func increase() {
        count += 1
    }

}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
