//
//  ViewController.swift
//  Emoji Party
//
//  Created by Rui Yang Tan on 28/7/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

private let REUSE_IDENTIFIER = "Cell"

class EmojiViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var mainView: UIView!
    
    var emojis = ["😂", "🤷‍♂️", "🤔", "🌚", "🌝", "😏", "🤦‍♂️", "🙄", "🎉", "👀", "💯", "🐶", "😘"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: REUSE_IDENTIFIER, for: indexPath) as! EmojiCollectionViewCell
        
        return cell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

