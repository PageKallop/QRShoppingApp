//
//  UIElements.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/15/21.
//

import Foundation
import UIKit


struct UIElements {
    
    let appLabel : UILabel = {
        var label = UILabel(frame: CGRect(x: 100, y: 100, width: 150, height: 75))
        label.textAlignment = .center
        label.text = "Shop Smart √"
        label.backgroundColor = .clear
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let oneBasket : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Asset 1"))
        image.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        return image
    }()
    
    let background : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "freshback"))
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let twoBasket : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Asset 1"))
        image.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        return image
    }()
    
    let threeBasket : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Asset 1"))
        image.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        return image
    }()
    
    let scanButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 130, height: 75))
        button.setTitle("Start Scanning", for: .normal)
        button.backgroundColor = UIColor.white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let totalLabel : UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.text = "Total:  $"
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let amountLabel : UILabel = {
        var label = UILabel()
        label.textAlignment = .left
//        label.text = "$0.00"
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let newLabel : UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .purple
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addButton : UIButton = {
        let button = UIButton()
        button.setTitle("Add Item", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 35
        button.layer.borderWidth = 2
        button.layer.borderColor = .init(red: 13.3/255, green: 54.5/255, blue: 13.3/255, alpha: 1)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var stackView: UIStackView = {
         let stackView = UIStackView()
         stackView.translatesAutoresizingMaskIntoConstraints = false
         stackView.axis = .horizontal
         stackView.backgroundColor = .clear
         stackView.spacing = 15
         stackView.alignment = .fill
        stackView.distribution = .fillProportionally
         return stackView
     }()
}

// DarkGreen(red: 13.3/255, green: 54.5/255, blue: 13.3/255, alpha: 0.5)
