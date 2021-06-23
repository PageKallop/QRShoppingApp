//
//  CartTableViewCell.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/16/21.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(image)
        addSubview(itemLabel)
        addSubview(priceLabel)
        priceConstraints()
        imageConstraints()
        itemConstraint()
  
    }
    
    override func layoutSubviews() {
        self.contentView.layer.cornerRadius = 1.0
        self.contentView.layer.borderWidth = 0.5
        self.contentView.layer.borderColor = UIColor.black.cgColor
        self.contentView.layer.masksToBounds = true

        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.1
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let itemLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .clear
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let image : UIImageView = {
//       let image = UIImageView()
        let image = UIImageView(image: #imageLiteral(resourceName: "Asset 1"))
        image.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        image.backgroundColor = .gray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func imageConstraints(){

        image.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: itemLabel.leadingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true

    }
    
    func itemConstraint()  {
        
        itemLabel.anchor(top: topAnchor, leading: image.trailingAnchor, bottom: bottomAnchor, trailing: priceLabel.leadingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))

   
    }
    
    func priceConstraints() {
        
        priceLabel.anchor(top: topAnchor, leading: itemLabel.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        priceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
}
//MARK:- Constraints
    
extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor, padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
    }
}
