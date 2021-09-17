//
//  ProductDetail.swift
//  SushiApp
//
//  Created by Farhad on 9/16/21.
//

import SwiftUI

struct ProductDetail: View {
    let product: Product
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("blackColor")
            
            VStack {
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                    
                    VStack {
                        
                        HStack {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 24))
                                .foregroundColor(Color("blackColor"))
                            Spacer()
                            
                            Image(systemName: "heart.fill")
                                .font(.system(size: 24))
                                .foregroundColor(Color("orangeColor"))
                        }
                        .padding(.horizontal, 20)
                        
                        Image("detail")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer().frame(height: 20)
                        
                        CounterView()

                        Spacer().frame(height: 30)
                        
                        HStack {
                            Text(product.title)
                                .font(.system(size: 24, weight: .semibold))
                        }
                        
                        Spacer().frame(height: 30)
                        
                        PropertyProductView()
                        
                    }
                    .padding(.top, 50)

                    Spacer().frame(height: 30)
                    
                    VStack (alignment: .leading) {
                        Text("Ingradients")
                            .font(.system(size: 20, weight: .bold))
                        
                        Spacer().frame(height: 10)

                        Text("This is a sample product for buying that you can order this product.\nPlease touch on Place Order.")
                            .foregroundColor(Color("grayColor"))
                            .lineSpacing(5)

                    }
                    .padding()
                }
                .background(Color("bgColor"))
                .frame(height: UIScreen.main.bounds.height - 80)
                .cornerRadius(30)
                
                HStack {
                    Text("Place Order")
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color.white)
                }
                .frame(height: 60)
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarHidden(true)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        let product = Product(imageName: "item1",
                              title: "Makimono Roll",
                              subTitle: "asda",
                              price: 4.50,
                              bgColor: "orangeColor")
        
        ProductDetail(product: product)
    }
}
