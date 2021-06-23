//
//  ItemManager.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/18/21.
//

import Foundation

protocol ItemManagerDelegate {
    func didUpdateItem(_ itemManager: ItemManager, newProduct: ItemModel)
    
    func didFailWithError(error: Error)
}

struct ItemManager {
    
    var delegate: ItemManagerDelegate?
    
    public var newCode = ""
  
    mutating func loadItems()  -> ItemModel? {
        if let fileLocation = Bundle.main.url(forResource: "ItemData", withExtension: "json") {
            print(fileLocation)
            print(newCode)
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode(Item.self, from: data)
             
                
                for _ in dataFromJson.itemInfo {
                    if newCode == dataFromJson.itemInfo[0].id {
                        let id = dataFromJson.itemInfo[0].id
                        let name = dataFromJson.itemInfo[0].name
                        let price = dataFromJson.itemInfo[0].price
                        let newProduct = ItemModel(item: id, product: name, cost: price)
                        self.delegate?.didUpdateItem(self, newProduct: newProduct)
                        print(" 1 \(newProduct)")
                        return newProduct
                    } else {
                        
                        if newCode == dataFromJson.itemInfo[1].id {
                            let id = dataFromJson.itemInfo[1].id
                            let name = dataFromJson.itemInfo[1].name
                            let price = dataFromJson.itemInfo[1].price
                            let newProduct = ItemModel(item: id, product: name, cost: price)
                            self.delegate?.didUpdateItem(self, newProduct: newProduct)
                            print(" 2 \(newProduct)")
                            return newProduct
                        } else {
                            if newCode == dataFromJson.itemInfo[2].id {
                                let id = dataFromJson.itemInfo[2].id
                                let name = dataFromJson.itemInfo[2].name
                                let price = dataFromJson.itemInfo[2].price
                                
                                let newProduct = ItemModel(item: id, product: name, cost: price)
                                print(" 3 \(newProduct)")
                                self.delegate?.didUpdateItem(self, newProduct: newProduct)
                                return newProduct
                                
                            }
                        }
                    }
                }
            }
            catch {
                delegate?.didFailWithError(error: error)
                print("Error decoding data \(error)")
                
                return nil
            }
        }
        return nil
    }
}
