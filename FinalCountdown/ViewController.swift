//
//  ViewController.swift
//  FinalCountdown
//
//  Created by 吳世馨 on 2020/12/11.
//

import UIKit
import Foundation


extension Date {
    func daysBetweenDate(toDate: Date) -> Int {
        let components = Calendar.current.dateComponents([.day], from: self, to: toDate); return components.day ?? 0
    }
}

    func countDown() -> Int {
     let formatter = DateFormatter()
     formatter.dateFormat = "YYYYMMdd"
     let resignationDate = formatter.date(from: "20201231")
     let _ = Date()
     let days = Date().daysBetweenDate(toDate: resignationDate!)
     return days
    }




class ViewController: UIViewController {

    @IBOutlet weak var countdown: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
        UIColor(red: 231/255, green: 233/255, blue: 237/255, alpha: 1).cgColor,
        UIColor(red: 200/255, green: 210/255, blue: 219/255, alpha: 1).cgColor,
        UIColor(red: 189/255, green: 200/255, blue: 211/255, alpha: 1).cgColor,
        UIColor(red: 181/255, green: 195/255, blue: 205/255, alpha: 1).cgColor,
        UIColor(red: 96/255, green: 127/255, blue: 146/255, alpha: 1).cgColor,
        UIColor(red: 73/255, green: 96/255, blue: 116/255, alpha: 1).cgColor,
        UIColor(red: 60/255, green: 95/255, blue: 122/255, alpha: 1).cgColor,
        UIColor(red: 56/255, green: 95/255, blue: 128/255, alpha: 1).cgColor,
        UIColor(red: 13/255, green: 42/255, blue: 61/255, alpha: 1).cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
        countdown.text =  "距離離職日還有\n\(countDown())天"
        }
    }



