//
//  ViewController.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/15/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
   
    var titleLabel = UIElements().appLabel
    var basketImage = UIElements().oneBasket
    var scanButton = UIElements().scanButton
    var background = UIElements().background

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    
        backConstraints()
        buttonConstraints()
        
        scanButton.addTarget(self, action: #selector(scanButtonClicked), for: .touchUpInside)
    }
    
    @objc func scanButtonClicked() {

        
        let scanVC = CamerScanViewController()
        let navVC = UINavigationController(rootViewController: scanVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
    }
    
    
    func backConstraints(){
        
        view.addSubview(background)
        
        background.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    func picConstraints(){
        var constraints = [NSLayoutConstraint]()
        view.addSubview(basketImage)
        constraints.append(basketImage.widthAnchor.constraint(equalToConstant: 250))
        constraints.append(basketImage.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(basketImage.centerYAnchor.constraint(equalTo: view.centerYAnchor))
    }
    
    func buttonConstraints(){
        
        var constraints = [NSLayoutConstraint]()
        view.addSubview(scanButton)
        constraints.append(scanButton.widthAnchor.constraint(equalToConstant: 250))
        constraints.append(scanButton.heightAnchor.constraint(equalToConstant: 47))
        constraints.append(scanButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        constraints.append(scanButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        NSLayoutConstraint.activate(constraints)
    }

}

