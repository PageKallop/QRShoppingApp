//
//  CartCollectionViewController.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/16/21.
//

import UIKit


class CartCollectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var item = ""
    var cost = ""
    var itemManager = ItemManager()

    var total = UIElements().totalLabel
    var addButton = UIElements().addButton
    var amountLabel = UIElements().amountLabel
    var stackView = UIElements().stackView


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        view.addSubview(stackView)
        view.addSubview(addButton)

 
        view.backgroundColor = .white
        tableView.backgroundColor = .white

        bottomElements()
        buttonConstraint()
        tableViewConstrains()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(CartTableViewCell.self, forCellReuseIdentifier: "cell")
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back to Scan", style: .plain, target: self, action: #selector(dismisself))
      
    }
   
 
    
    let tableView : UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func tableViewConstrains(){
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(tableView.widthAnchor.constraint(equalToConstant: 400))
        constraints.append(tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300))
        NSLayoutConstraint.activate(constraints)
    }
    

    
    func bottomElements(){
        stackView.addArrangedSubview(total)
        stackView.addArrangedSubview(amountLabel)
        stackView.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        
    }
    
    func buttonConstraint(){
        
        addButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 180).isActive = true
        addButton.leadingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 70).isActive = true
        addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
    }
    
    @objc func dismisself(){
        dismiss(animated: true, completion: nil)
    }


 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        cell.priceLabel.text = cost
        cell.itemLabel.text = item
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 1
    }

    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {

        return nil
        
        }

}
