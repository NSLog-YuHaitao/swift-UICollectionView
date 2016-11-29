//
//  NextViewController.swift
//  swift-UICollectionView
//
//  Created by 尊驾 on 16/11/29.
//  Copyright © 2016年 尊驾. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    let height = UIScreen.main.bounds.size.height
    let width = UIScreen.main.bounds.size.width
    
    var iv : UIImageView = UIImageView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "详情"
        
        self.showiv()
    }
    
    func showiv() -> Void {
        iv.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        iv.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(iv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
