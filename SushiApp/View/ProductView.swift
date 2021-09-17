//
//  ProductView.swift
//  SushiApp
//
//  Created by Farhad on 9/16/21.
//

import SwiftUI

struct ProductView: View {
    let product: Product
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Spacer()
            
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Text(product.title)
                .font(.system(size: 18).weight(.bold))
                .lineLimit(1)
                .foregroundColor(Color("blackColor"))

            HStack {
                VStack(alignment: .leading) {
                    Text(product.subTitle)
                        .font(.system(size: 16))
                        .foregroundColor(Color("grayColor"))
                    
                    Spacer().frame(height: 10)
                    
                    Text("$" + String(product.price) + "0")
                        .bold()
                        .foregroundColor(Color("blackColor"))
                }
                
                Spacer()
                
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(Color(product.bgColor))
                    .font(.system(size: 40))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(imageName: "item1",
                              title: "Makimono Roll",
                              subTitle: "asda",
                              price: 4.50,
                              bgColor: "orangeColor")
        
        ProductView(product: product)
    }
}
