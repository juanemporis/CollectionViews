//
//  ViewController.swift
//  CollectionViews
//
//  Created by wendy manrique on 2/05/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let myCountries = ["España","Mexico","Peru","Colombia","Argentina","EEUU","Francia","Italia"]
    
    //Este codigo hace que cada celda tenga 2 filas
    private let myCellWidth = UIScreen.main.bounds.width / 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }

}
// MARK: UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    //Este codigo hace referencia al numer de celdas
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as?
        MyCustomCollectionViewCell
        
        cell!.myFristLabel.text = myCountries[indexPath.row]
        return cell!
    }
    //Este codigo hace referencia al numero de items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountries.count
    }
}

// MARK: UICollecitonViewDelegate
extension ViewController: UITableViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAT indexPath: IndexPath){
        print("\(indexPath.section) \(indexPath.row) \(myCountries[indexPath.row])")
    }
}
// MARK: UICollectionViewDelegateFlowLayout
    //Este codigo hace referencia al tamaño de las celdas 
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section == 0 {
        return CGSize(width: myCellWidth, height: myCellWidth)
    }
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
}
}

