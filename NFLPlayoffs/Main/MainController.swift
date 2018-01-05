//
//  ViewController.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class MainController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let mainCellId = "mainCellId"
    let screenSize = UIScreen.main.bounds
    
    let divisions = [#imageLiteral(resourceName: "nfc"), #imageLiteral(resourceName: "afc")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(MainCell.self, forCellWithReuseIdentifier: mainCellId)
        collectionView?.backgroundColor = .white
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return divisions.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: mainCellId, for: indexPath) as! MainCell
        cell.imageView.image = divisions[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
                
        if indexPath.item == 0 {
            let layout = UICollectionViewFlowLayout()
            let nfcController = NFCWildcardController(collectionViewLayout: layout)
            navigationController?.pushViewController(nfcController, animated: true)
            
        } else if indexPath.item == 1 {
            let layout = UICollectionViewFlowLayout()
            let afcController = AFCWildcardController(collectionViewLayout: layout)
            navigationController?.pushViewController(afcController, animated: true)

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: Helpers.screenSize.height / 2)
    }


}

