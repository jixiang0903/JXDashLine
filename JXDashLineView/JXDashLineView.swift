//
//  JXDashLineView.swift
//
//  Created by jixiang on 2022/8/9.
//

import UIKit

class JXDashLineView: UIView {
    private var lineLength: CGFloat = 1
    private var lineSpacing: CGFloat = 5
    private var lineColor: UIColor!
    private var lineHeight: CGFloat!

    init(frame: CGRect, lineLength: CGFloat = 1, lineSpacing: CGFloat = 5, lineColor: UIColor = .black, lineHeight: CGFloat = 50) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        self.lineLength = lineLength
        self.lineSpacing = lineSpacing
        self.lineColor = lineColor
        self.lineHeight = frame.size.height
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()
        context?.beginPath()
        context?.setLineWidth(1)
        context?.setStrokeColor(lineColor.cgColor)
        let lengths = [lineLength, lineSpacing]
        context?.setLineDash(phase: 0, lengths: lengths)
        context?.move(to: CGPoint(x: 0, y: 0))
        context?.addLine(to: CGPoint(x: 0, y: lineHeight))
        context?.strokePath()
        context?.closePath()
    }
}
