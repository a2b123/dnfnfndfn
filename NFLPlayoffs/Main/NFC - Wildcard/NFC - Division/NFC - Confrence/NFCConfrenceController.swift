//
//  NFCConfrenceController.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class NFCConfrenceController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let nfcConfrenceCellId = "nfcConfrenceCellId"
    private let infoDivisionCellId = "infoDivisionCellId"
    private let blankCellId = "blankCellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(NFCConfrenceCell.self, forCellWithReuseIdentifier: nfcConfrenceCellId)
        collectionView?.register(InfoCell.self, forCellWithReuseIdentifier: infoDivisionCellId)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: blankCellId)

        collectionView?.backgroundColor = .white
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item % 2 == 0 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nfcConfrenceCellId, for: indexPath) as! NFCConfrenceCell
            return cell
            
        } else if indexPath.item == 3 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: blankCellId, for: indexPath)
            return cell
            
            
        } else {
            
            let infoCell = collectionView.dequeueReusableCell(withReuseIdentifier: infoDivisionCellId, for: indexPath) as! InfoCell
            return infoCell
            
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        if indexPath.item == 0 {
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
