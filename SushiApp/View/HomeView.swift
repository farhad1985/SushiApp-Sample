//
//  HomeView.swift
//  SushiApp
//
//  Created by Farhad on 9/14/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var suggest: String = ""
    
    let menuItems = [
        Menu(isActive: true, title: "Sushi 1"),
        Menu(isActive: false, title: "Sushi Sushi"),
        Menu(isActive: false, title: "Sushi3"),
        Menu(isActive: false, title: "Sushi4"),
        Menu(isActive: false, title: "Sushi5"),
    ]
    
    let productItems = [
        Product(imageName: "item1",
                             title: "Makimono Roll",
                             subTitle: "asda",
                             price: 14.50,
                             bgColor: "orangeColor"),
        Product(imageName: "item2",
                             title: "Makimono Roll",
                             subTitle: "asda",
                             price: 3.50,
                             bgColor: "orangeColor"),
        Product(imageName: "item3",
                             title: "Makimono Roll",
                             subTitle: "asda",
                             price: 4.0,
                             bgColor: "orangeColor"),
        Product(imageName: "item4",
                             title: "Makimono Roll",
                             subTitle: "asda",
                             price: 3.75,
                             bgColor: "orangeColor")
    ]
    
    var body: some View {
        ZStack (alignment: .top) {
            Color("bgColor")
            VStack (alignment:.leading) {
                HStack {
                    Image("menu")
                        .resizable()
                        .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image("avatar")
                        .resizable()
                        .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
                                
                VStack (alignment:.leading){
                    Text("Healthy and")
                        .font(.system(size: 30, weight: .light))
                    
                    Spacer().frame(height: 10)
                    
                    Text("Delicious Sushi")
                        .font(.system(size: 30, weight: .bold))
                }
                .padding(.horizontal, 20)

                Spacer().frame(height: 20)

                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search your for favorite sushi",
                              text: $suggest)
                        .font(.system(size: 16))
                        .foregroundColor(Color("grayColor"))
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .padding(.horizontal, 20)
                
                Spacer().frame(height: 20)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(menuItems, id: \.self) { item in
                            MenuClass(item: item)
                        }
                    }
                    .padding(.leading, 20)
                })
                
                ScrollView (showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10, content: {
                        
                        ForEach(productItems, id: \.self) { item in
                            
                            NavigationLink(
                                destination: ProductDetail(product: item),
                                label: {
                                    ProductView(product: item)
                                })
                        }
                    })
                }.padding()
            }
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
