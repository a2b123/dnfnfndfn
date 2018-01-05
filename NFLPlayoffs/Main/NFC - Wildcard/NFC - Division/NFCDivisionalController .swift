//
//  NFCDivisionalController .swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class NFCDivisionController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let nfcDivisionCellId = "nfcDivisionCellId"
    private let infoDivisionCellId = "infoDivisionCellId"
    private let blankCellId = "blankCellId"
    
    var selectedIndexes = [IndexPath]() {
        didSet {
            collectionView?.reloadData()
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(NFCDivisionCell.self, forCellWithReuseIdentifier: nfcDivisionCellId)
        collectionView?.register(InfoCell.self, forCellWithReuseIdentifier: infoDivisionCellId)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: blankCellId)

        collectionView?.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextButtonPressed))

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item % 2 == 0 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nfcDivisionCellId, for: indexPath) as! NFCDivisionCell
            if self.selectedIndexes.index(of: indexPath) == nil {
                cell.backgroundColor = UIColor.white // Unselected
            } else {
                cell.backgroundColor = UIColor.red // Selected
            }
            
            if self.selectedIndexes.index(of: indexPath) == 4 {
                print("first is selected")
            }

            return cell
            
        } else if indexPath.item == 3 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: blankCellId, for: indexPath)
            cell.backgroundColor = .black
            cell.isUserInteractionEnabled = false
            return cell

            
        } else {
            
            let infoCell = collectionView.dequeueReusableCell(withReuseIdentifier: infoDivisionCellId, for: indexPath) as! InfoCell
            infoCell.isUserInteractionEnabled = false
            return infoCell
            
        }
        

        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(indexPath.item)
        if let selectedIndex = selectedIndexes.index(of: indexPath) {
            selectedIndexes.remove(at: selectedIndex)
        } else {
            print(selectedIndexes.count)
            if selectedIndexes.count < 2 {
                selectedIndexes.append(indexPath)
            } else {
                print("error")
            }
            
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 3 {
            return CGSize(width: view.frame.width, height: 20)
        } else {
            return CGSize(width: view.frame.width, height: 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    @objc func nextButtonPressed() {
        print("next button pressed")
        let layout = UICollectionViewFlowLayout()
        let nfcConfrenceController = NFCConfrenceController(collectionViewLayout: layout)
        navigationController?.pushViewController(nfcConfrenceController, animated: true)
    }
    

}


