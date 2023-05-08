//
//  ViewController.swift
//  DI4
//
//  Created by 方品中 on 2023/5/8.
//

import UIKit

class ViewController: UIViewController {
    var yellow: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let viewWidth = Int(self.view.frame.width)
        
        // MARK: 黃色
        yellow = UIView(frame: CGRect(x: 0, y: 0, width: viewWidth / 2, height: viewWidth / 2))
        yellow.center = self.view.convert(self.view.center, from: self.view)
        yellow.backgroundColor = .yellow
        yellow.layer.cornerRadius = CGFloat(yellow.frame.width / 2)
        
        self.view.addSubview(yellow)
        
        // MARK: 紫色
        let purple = UIView(frame: CGRect(x: 0, y: Int(yellow.frame.height / 4), width: viewWidth / 4, height: viewWidth / 4))
        purple.backgroundColor = .purple
        purple.layer.cornerRadius = CGFloat(purple.frame.width / 2)

        yellow.addSubview(purple)
        
        // MARK: 紅色
        let red = UIView(frame: CGRect(x: Int(yellow.frame.width / 2), y: Int(yellow.frame.height / 4), width: viewWidth / 4, height: viewWidth / 4))
        red.backgroundColor = .red
        red.layer.cornerRadius = CGFloat(red.frame.width / 2)

        yellow.addSubview(red)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        yellow.center = self.view.convert(self.view.center, from: self.view)
    }
}
