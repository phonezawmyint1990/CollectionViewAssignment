//
//  BookStoreCollectionViewCell.swift
//  CollectionViewAssignment
// 
//  Created by Aung Ko Ko on 8/29/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class BookStoreCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var authorImg: UIImageView!
    @IBOutlet weak var lblBookName: UILabel!
    @IBOutlet weak var lblAuthorName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
