//
//  ViewController.swift
//  JXDashLineView
//
//  Created by jixiang on 2022/11/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //横线
        let horizontalLineView = UIView(frame: CGRect(x: 100, y: 150, width: 200, height: 0.5))
        horizontalLineView.drawDashLine(strokeColor: .red, lineWidth: 0.5, lineLength: 6, lineSpacing: 6)
        self.view.addSubview(horizontalLineView)
        //竖线
        let verticalLineView = JXDashLineView(frame: CGRect(x: 200, y: 200, width: 0.5, height: 200), lineLength: 4, lineSpacing: 3, lineColor: .systemPink, lineHeight: 60)
        self.view.addSubview(verticalLineView)
    }
}

