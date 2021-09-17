//
//  Product.swift
//  SushiApp
//
//  Created by Farhad on 9/16/21.
//

import Foundation

struct Product: Hashable, Codable {
    let imageName: String
    let title: String
    let subTitle: String
    let price: Double
    let bgColor: String
}
