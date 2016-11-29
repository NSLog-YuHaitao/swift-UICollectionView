//
//  ViewController.swift
//  swift-UICollectionView
//
//  Created by 尊驾 on 16/11/29.
//  Copyright © 2016年 尊驾. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    let height = UIScreen.main.bounds.size.height
    let width = UIScreen.main.bounds.size.width
    
    var collectionView:UICollectionView!
    var layout:UICollectionViewFlowLayout!
    var dataArr:NSMutableArray = NSMutableArray.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "照片墙"
        
        self.initData()
        self.createCollectionView()
        
    }
    //MARK: 初始化
    func initData() -> Void {
        for i in 0...19 {
            let str = NSString.init(string: "\(i+1).jpg")
            dataArr.add(str)
        }
    }
    
    //MARK:创建collectionView
    func createCollectionView() -> Void {
        
        layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize.init(width: 100, height:130)
        
        collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: width, height: height), collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view.addSubview(collectionView)
        collectionView.register(picCollectionViewCell.classForCoder() ,forCellWithReuseIdentifier: "cellID")
        
    }
    
    //组数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //行数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! picCollectionViewCell
        cell.iv?.image = UIImage.init(named:dataArr[indexPath.row] as! String)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let nextVC:NextViewController = NextViewController.init()
        nextVC.iv.image = UIImage.init(named: dataArr[indexPath.row] as! String)
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

