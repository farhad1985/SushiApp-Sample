//
//  ContentView.swift
//  SushiApp
//
//  Created by Farhad on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("bgColor")
                VStack {
                    Image("onboarding_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Heaven of Sushi")
                        .font(.system(size: 36))
                        .bold()
                        .foregroundColor(Color("blackColor"))
                    
                    Spacer().frame(height: 30)
                    
                    Text("This is a app for making sushi that it makes with swiftUI. I hope that you enjoy it. however you can install this app on your iphone.")
                        .multilineTextAlignment(.center)
                        .lineSpacing(5)
                        .foregroundColor(Color("grayColor"))

                    Spacer().frame(height: 30)
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            ZStack {
                                HStack {
                                    Image(systemName: "arrow.right")
                                        .font(.system(size: 24))
                                        .foregroundColor(.white)
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 16))
                                        .foregroundColor(.white)
                                        .padding(.leading, -7)
                                }
                            }
                            .frame(width: 72, height: 72, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("blackColor"))
                            .cornerRadius(36)
                        })

                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
