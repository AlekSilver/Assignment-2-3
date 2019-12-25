//
//  ViewController.swift
//  Pyramid
//
//  Created by Oleksandr Seliverstov on 22.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawPyramid(basis: 7)
        
        drawTarget(segments: 7)
        
    }
    
    var x = 50
    var y = 300
    var width: Int = 0
    var height: Int = 0
    func drawPyramid(basis: Int) {
        var nextBasis = basis
        var i = 0
        while nextBasis > 0 {
            for _ in 0..<nextBasis {
                drawBox()
                x = x + 36
            }
            i += 1
            x = 50 + 18 * i
            y -= 36
            nextBasis = nextBasis - 1
        }
    }
    
    func drawTarget(segments: Int) {
        x = 90
        y = 600
        width = 220
        height = 220
        //        var nextSegment = segments
        for _ in 0..<segments {
            drawCircle()
            x = x + 10
            y = y + 10
            width = width - 20
            height = height - 20
        }
    }
    
    func drawBox() {
        let box = UIView(frame: CGRect(x: x, y: y, width: 32, height: 32))
        box.backgroundColor = .darkGray
        view.addSubview(box)
    }
    
    func drawCircle() {
        let circle = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        circle.backgroundColor = .random
        circle.layer.cornerRadius = CGFloat(Int(width) / 2)
        circle.clipsToBounds = true
        view.addSubview(circle)
    }
    
}

