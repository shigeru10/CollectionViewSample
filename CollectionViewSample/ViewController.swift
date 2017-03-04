//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by SuzukiShigeru on 2017/03/04.
//  Copyright © 2017年 SuzukiShigeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var sampleCollectionView: UICollectionView!
    var sampleCollectionViewCell: UICollectionViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = UICollectionViewFlowLayout()
        sampleCollectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        
//        sampleCollectionView.register(sampleCollectionViewCell.self)
        sampleCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        // デフォルトの背景色が黒らしいので、白くする
        sampleCollectionView.backgroundColor = UIColor.white
        sampleCollectionView.delegate = self
        sampleCollectionView.dataSource = self
        
        view.addSubview(sampleCollectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // セルの数の指定
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    // セルの生成、カスタムセルなどを呼び出す
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    // セルのサイズを規定する
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height:CGFloat = CGFloat(UIScreen.main.bounds.height)
        let width:CGFloat = CGFloat(UIScreen.main.bounds.width)
        return CGSize(width:width*0.5, height:height*0.5)
    }

}

