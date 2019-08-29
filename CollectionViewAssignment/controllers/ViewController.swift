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
    var bookName:[String] = ["Rich Dad Poor Dad","The Learn Startup",
                             "The 4-Hour Work Week","The subtle art of not giving a F*ck","The Modern Alphabet","Think and Grow Rich","Rich Dad Poor Dad","The Learn Startup",
                             "The 4-Hour Work Week","The subtle art of not giving a F*ck","The Modern Alphabet","Think and Grow Rich","Rich Dad Poor Dad","The Learn Startup",
                             "The 4-Hour Work Week","The subtle art of not giving a F*ck","The Modern Alphabet","Think and Grow Rich"]
    var authorName:[String] = ["Robert T.Kiyosaki","Eric Ries","Timothy Ferriss","Mark Manson","Charles Duhigg","Napoleaon Hill","Robert T.Kiyosaki","Eric Ries","Timothy Ferriss","Mark Manson","Charles Duhigg","Napoleaon Hill","Robert T.Kiyosaki","Eric Ries","Timothy Ferriss","Mark Manson","Charles Duhigg","Napoleaon Hill"]
    var authorImg:[UIImage] = [#imageLiteral(resourceName: "RichDadPoorDad"),#imageLiteral(resourceName: "TheLearnStartup"),#imageLiteral(resourceName: "The4HourWorkWeek"),#imageLiteral(resourceName: "TheSubtleArtOfNot"),#imageLiteral(resourceName: "TheModernAlphabet"),#imageLiteral(resourceName: "ThinkAndGrowRich"),#imageLiteral(resourceName: "RichDadPoorDad"),#imageLiteral(resourceName: "TheLearnStartup"),#imageLiteral(resourceName: "The4HourWorkWeek"),#imageLiteral(resourceName: "TheSubtleArtOfNot"),#imageLiteral(resourceName: "TheModernAlphabet"),#imageLiteral(resourceName: "ThinkAndGrowRich"),#imageLiteral(resourceName: "RichDadPoorDad"),#imageLiteral(resourceName: "TheLearnStartup"),#imageLiteral(resourceName: "The4HourWorkWeek"),#imageLiteral(resourceName: "TheSubtleArtOfNot"),#imageLiteral(resourceName: "TheModernAlphabet"),#imageLiteral(resourceName: "ThinkAndGrowRich")]
    
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
        return bookName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BookStoreCollectionViewCell.self), for: indexPath) as! BookStoreCollectionViewCell
        item.lblAuthorName.text = authorName[indexPath.row]
        item.lblBookName.text = bookName[indexPath.row]
        item.authorImg.image = authorImg[indexPath.row]
        return item
    }
    
    
}

extension BookStoreViewController: UICollectionViewDelegate{
    
}
