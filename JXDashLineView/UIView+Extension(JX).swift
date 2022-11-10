//
//  UIView+Extension(JX).swift
//  iFriendCommunity
//
//  Created by jixiang on 2022/8/9.
//
import Foundation
import UIKit

extension UIView{
    //MARK:- 绘制虚线
    func drawDashLine(strokeColor: UIColor, lineWidth: CGFloat = 1, lineLength: Int = 10, lineSpacing: Int = 5) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = self.bounds
//        shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
        shapeLayer.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = strokeColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPhase = 0 //从哪个位置开始
        //每一段虚线长度 和 每两段虚线之间的间隔
        shapeLayer.lineDashPattern = [NSNumber(value: lineLength), NSNumber(value: lineSpacing)]
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: self.layer.bounds.width, y: 0))
        shapeLayer.path = path
        self.layer.addSublayer(shapeLayer)
    }
}
