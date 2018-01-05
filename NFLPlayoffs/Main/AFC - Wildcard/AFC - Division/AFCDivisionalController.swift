//
//  AFCDivisionalController.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class AFCDivisionController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let afcDivisionCellId = "afcDivisionCellId"
    private let infoDivisionCellId = "infoDivisionCellId"
    private let blankCellId = "blankCellId"
    
    var afcDivisionTeams: [TeamModel]?
    var selectedAFCWildcardTeams = [TeamModel]()
    var selectedAFCDivisionTeams = [TeamModel]()

    
    var selectedIndexes = [IndexPath]() {
        didSet {
            collectionView?.reloadData()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView?.register(AFCDivisionCell.self, forCellWithReuseIdentifier: afcDivisionCellId)
        collectionView?.register(InfoCell.self, forCellWithReuseIdentifier: infoDivisionCellId)
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: blankCellId)

        collectionView?.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextButtonPressed))

        
        afcDivisionTeams = TeamModel.afcDivisionTeam()
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return afcDivisionTeams?.count ?? 0
//        return selectedAFCWildcardTeams.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let firstSelectedTeam = selectedAFCWildcardTeams[0].seed {
            if let secondSelectedTeam = selectedAFCWildcardTeams[1].seed {
                if firstSelectedTeam > secondSelectedTeam {
                    afcDivisionTeams?[0] = selectedAFCWildcardTeams[0]
                    afcDivisionTeams?[4] = selectedAFCWildcardTeams[1]
                } else {
                    afcDivisionTeams?[0] = selectedAFCWildcardTeams[1]
                    afcDivisionTeams?[4] = selectedAFCWildcardTeams[0]
                }

            }
        }
        
//        if selectedAFCWildcardTeams[0].seed! > selectedAFCWildcardTeams[1].seed! {
//            afcDivisionTeams![0] = selectedAFCWildcardTeams[0]
//            afcDivisionTeams![4] = selectedAFCWildcardTeams[1]
//        } else {
//            afcDivisionTeams![0] = selectedAFCWildcardTeams[1]
//            afcDivisionTeams![4] = selectedAFCWildcardTeams[0]
//        }

        if indexPath.item % 2 == 0 {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: afcDivisionCellId, for: indexPath) as! AFCDivisionCell
            cell.afcDivision = afcDivisionTeams?[indexPath.item]

            if self.selectedIndexes.index(of: indexPath) == nil {
                cell.backgroundColor = UIColor.white // Unselected
            } else {
                cell.backgroundColor = UIColor.red // Selected
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
        
        if let selectedIndex = selectedIndexes.index(of: indexPath) {
            selectedIndexes.remove(at: selectedIndex)
            selectedAFCWildcardTeams.remove(at: selectedIndex)
        } else {
            print(selectedIndexes.count)
            if selectedIndexes.count < 2 {
                selectedIndexes.append(indexPath)
                
                if let selectedTeams = afcDivisionTeams?[indexPath.item] {
                    selectedAFCDivisionTeams.append(selectedTeams)
                    
                }
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
        let afcConfrenceController = AFCConfrenceController(collectionViewLayout: layout)
        afcConfrenceController.selectedAFCDivisionTeams = selectedAFCDivisionTeams
        navigationController?.pushViewController(afcConfrenceController, animated: true)
    }

}

