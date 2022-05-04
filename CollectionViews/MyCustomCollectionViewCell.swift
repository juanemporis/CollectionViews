//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by wendy manrique on 2/05/22.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myFristLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
        
        myFristLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFristLabel.textColor = .blue
    }

}
