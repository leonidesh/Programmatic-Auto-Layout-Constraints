//
//  ViewController.swift
//  Programmatic Auto Layout Constraints
//
//  Created by 刘洋 on 6/22/19.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button1 = UIButton()
    var buttonbiankuang:[NSLayoutConstraint] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let top = button1.topAnchor.constraint(equalTo: self.view.topAnchor)
        
        let xia = button1.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = UIColor.gray
        button1.setTitle("Press me,pls!", for: .normal)
        button1.setTitleColor(UIColor.black, for: .normal)
        
        self.view.addSubview(button1)
        buttonbiankuang = [top, xia]
        NSLayoutConstraint.activate(buttonbiankuang)
        button1.addTarget(self, action: #selector(action), for: .touchUpInside)
    }
    @objc func action(){
        
        NSLayoutConstraint.deactivate(buttonbiankuang)
        
        button1.backgroundColor = UIColor.yellow
        button1.setTitle("Hello World!!!", for: .normal)
        button1.setTitleColor(UIColor.purple, for: .normal)
        
        let buttongao = button1.heightAnchor.constraint(equalToConstant: 100)
        
        let buttonkuan = button1.widthAnchor.constraint(equalToConstant: 150)
        
        let newButtonConstraints:[NSLayoutConstraint] = [buttongao, buttonkuan]
        
        NSLayoutConstraint.activate(newButtonConstraints)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

