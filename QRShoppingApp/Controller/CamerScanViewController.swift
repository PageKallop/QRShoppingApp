//
//  CamerScanViewController.swift
//  QRShoppingApp
//
//  Created by Page Kallop on 6/15/21.
//

import UIKit
import AVFoundation

class CamerScanViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate, ScannerDelegate, ItemManagerDelegate {
 
    
    func didFailWithError(error: Error) {
        print(error)
    }
    

    var itemManager = ItemManager()
    
    var scanner: Scanner?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        self.scanner = Scanner(withDelegate: self)
        scanner?.requestCaptureSessionStartRunning()
        itemManager.delegate = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        
        guard let scanner = self.scanner else {
            return
        }
        
        scanner.metadataOutput(output, didOutput: metadataObjects, from: connection)
      
    }
    
    func cameraView() -> UIView? {
        
        return self.view
    }
    

    func scanCompleted(withCode code: String) {

        print(code)
        itemManager.newCode = code
       itemManager.loadItems()

        
    }
    func didUpdateItem(_ itemManager: ItemManager, newProduct: ItemModel) {
        
        DispatchQueue.main.async {
            let cartVC = CartCollectionViewController()
            let navVC = UINavigationController(rootViewController: cartVC)
            navVC.modalPresentationStyle = .fullScreen
            self.present(navVC, animated: true, completion: nil)
            cartVC.item = newProduct.product
            cartVC.cost = newProduct.cost

        }
  
      
    }
    
 
    func delegateViewController() -> UIViewController {
    
        return self
 
    }
    

}
