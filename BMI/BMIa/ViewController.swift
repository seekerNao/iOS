//
//  ViewController.swift
//  BMIa
//
//  Created by 佐藤大介 on 2015/04/21.
//  Copyright (c) 2015年 daisuke sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var haikei: UIImageView!
    
    @IBOutlet weak var sokutei: UITextView!
    @IBOutlet weak var bmi: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tab(sender: AnyObject) {
    }

    @IBAction func sokutei1(sender: UIButton) {
        
        var h1:Double = atof(height.text)
        var w1:Double = atof(weight.text)
        var h2:Double = (h1*h1)/10000
        var s1:Double = w1/h2
        var s2:Int = Int(s1)
        bmi.text = String(stringInterpolationSegment: s2)

        
        if s1>=18 {sokutei.text="痩せすぎです。もっと食べるようにして体重を増やすようにしましょう。痩せすぎはよくないです。"}
        if s1>=20 {sokutei.text="普通ですこの調子で体型を維持しましう。"}
        if s1>=25{ sokutei.text="肥満度1です。少し太ってきました。そろそろ身体のことを考えてみてください。"}
        if s1>=30 {sokutei.text="肥満度2です。すぐ普通体型に戻れるのでダイエット頑張りましょう。"}
        if s1>=35{ sokutei.text="肥満度3です。つまり肥満の中でもさらに肥満の分類なので痩せる努力をしましょう。"}
            if s1>=40{
            sokutei.text="肥満度4です。つまり肥満の中の肥満です急いで痩せてください。"
                let haikei = UIImage(named: "dokuro.jpg")
                
        }
            if(s1<18) { sokutei.text = "このままだと死んでしまうくらい痩せています。 "
                let haikei = UIImage(named: "dokuro.jpg")
                
                
        }
            }
}

