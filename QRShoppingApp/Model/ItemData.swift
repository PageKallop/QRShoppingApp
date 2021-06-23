//
//  ItemData.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/17/21.
//

import Foundation

struct Item: Codable {
    
    let itemInfo : [ItemInfo]

}

struct ItemInfo: Codable {
    
    let id : String
    let name : String
    let price : String
}
