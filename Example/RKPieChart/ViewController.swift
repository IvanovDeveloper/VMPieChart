//
//  ViewController.swift
//  RKPieChart
//
//  Created by ridvank on 08/31/2017.
//  Copyright (c) 2017 ridvank. All rights reserved.
//

import UIKit
import RKPieChart

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstItem: VMPieChartItem = VMPieChartItem(ratio: 1050, color: UIColor.orange, title: "1️⃣th Item ")
        let secondItem: VMPieChartItem = VMPieChartItem(ratio: 30, color: UIColor.gray, title: "2️⃣nd Item")
        let thirdItem: VMPieChartItem = VMPieChartItem(ratio: 20, color: UIColor.yellow, title: "3️⃣th Item")
        let item4: VMPieChartItem = VMPieChartItem(ratio: 20, color: UIColor.yellow, title: "3️⃣th Item")
        let item5: VMPieChartItem = VMPieChartItem(ratio: 20, color: UIColor.yellow, title: "3️⃣th Item")
        let item6: VMPieChartItem = VMPieChartItem(ratio: 20, color: UIColor.yellow, title: "3️⃣th Item")
        
        let chartView = VMPieChartView(items: [firstItem, secondItem, thirdItem, item4, item5, item6], centerTitle: "")
        chartView.circleColor = .clear
        chartView.translatesAutoresizingMaskIntoConstraints = false
        chartView.arcWidth = 16
        chartView.isIntensityActivated = false
        chartView.style = .butt
        chartView.isTitleViewHidden = true
        chartView.isAnimationActivated = true
        self.view.addSubview(chartView)
        
        chartView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        chartView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        chartView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        chartView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
}

private extension UIColor {
    var dark: UIColor {
        var r:CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0, a:CGFloat = 0
        
        if self.getRed(&r, green: &g, blue: &b, alpha: &a){
            return UIColor(red: max(r - 0.4, 0.0), green: max(g - 0.4, 0.0), blue: max(b - 0.4, 0.0), alpha: a)
        }
        
        return UIColor()
    }
    var light: UIColor {
        var r:CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0, a:CGFloat = 0
        
        if self.getRed(&r, green: &g, blue: &b, alpha: &a){
            return UIColor(red: min(r + 0.4, 1.0), green: min(g + 0.4, 1.0), blue: min(b + 0.4, 1.0), alpha: a)
        }
        
        return UIColor()
    }
    
}
