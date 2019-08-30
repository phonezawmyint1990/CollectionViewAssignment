//
//  ViewController.swift
//  CollectionViewAssignment
//
//  Created by Aung Ko Ko on 8/29/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {

    @IBOutlet weak var bookStoreCollectionView: UICollectionView!
    
    let numberOfItemPerRow:CGFloat = 3.0
    let spacing:CGFloat = 5
    var data = [CustomData(authorName: "Robert T.Kiyosaki", bookName: "Rich Dad Poor Dad", authorImg: #imageLiteral(resourceName: "RichDadPoorDad")),
                CustomData(authorName: "Eric Ries", bookName: "The Learn Startup", authorImg: #imageLiteral(resourceName: "TheLearnStartup")),
                CustomData(authorName: "Timothy Ferriss", bookName: "The 4-Hour Work Week", authorImg: #imageLiteral(resourceName: "The4HourWorkWeek")),
                CustomData(authorName: "Mark Manson", bookName: "The subtle art of not giving a F*ck", authorImg: #imageLiteral(resourceName: "TheSubtleArtOfNot")),
                CustomData(authorName: "Charles Duhigg", bookName: "The Modern Alphabet", authorImg: #imageLiteral(resourceName: "TheModernAlphabet")),
                CustomData(authorName: "Napoleaon Hill", bookName: "Think and Grow Rich", authorImg: #imageLiteral(resourceName: "ThinkAndGrowRich")),
                CustomData(authorName: "Robert T.Kiyosaki", bookName: "Rich Dad Poor Dad", authorImg: #imageLiteral(resourceName: "RichDadPoorDad")),
                CustomData(authorName: "Eric Ries", bookName: "The Learn Startup", authorImg: #imageLiteral(resourceName: "TheLearnStartup")),
                CustomData(authorName: "Timothy Ferriss", bookName: "The 4-Hour Work Week", authorImg: #imageLiteral(resourceName: "The4HourWorkWeek")),
                CustomData(authorName: "Mark Manson", bookName: "The subtle art of not giving a F*ck", authorImg: #imageLiteral(resourceName: "TheSubtleArtOfNot")),
                CustomData(authorName: "Charles Duhigg", bookName: "The Modern Alphabet", authorImg: #imageLiteral(resourceName: "TheModernAlphabet")),
                CustomData(authorName: "Napoleaon Hill", bookName: "Think and Grow Rich", authorImg: #imageLiteral(resourceName: "ThinkAndGrowRich")),
                CustomData(authorName: "Robert T.Kiyosaki", bookName: "Rich Dad Poor Dad", authorImg: #imageLiteral(resourceName: "RichDadPoorDad")),
                CustomData(authorName: "Eric Ries", bookName: "The Learn Startup", authorImg: #imageLiteral(resourceName: "TheLearnStartup")),
                CustomData(authorName: "Timothy Ferriss", bookName: "The 4-Hour Work Week", authorImg: #imageLiteral(resourceName: "The4HourWorkWeek")),
                CustomData(authorName: "Mark Manson", bookName: "The subtle art of not giving a F*ck", authorImg: #imageLiteral(resourceName: "TheSubtleArtOfNot")),
                CustomData(authorName: "Charles Duhigg", bookName: "The Modern Alphabet", authorImg: #imageLiteral(resourceName: "TheModernAlphabet")),
                CustomData(authorName: "Napoleaon Hill", bookName: "Think and Grow Rich", authorImg: #imageLiteral(resourceName: "ThinkAndGrowRich"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookStoreCollectionView.delegate = self
        bookStoreCollectionView.dataSource = self
        bookStoreCollectionView.register(UINib(nibName: String(describing: BookStoreCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: BookStoreCollectionViewCell.self))
        
        let totalPadding: CGFloat = numberOfItemPerRow * spacing
        let itemWidth = (self.view.frame.width - totalPadding)/numberOfItemPerRow
        
        let layout = bookStoreCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth + itemWidth)
    }


}

extension BookStoreViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookStoreCollectionViewCell.self), for: indexPath) as! BookStoreCollectionViewCell
        item.data = data[indexPath.row]
        return item
    }
    
    
}

extension BookStoreViewController: UICollectionViewDelegate{
    
}


struct CustomData {
    var authorName: String
    var bookName: String
    var authorImg: UIImage
}
