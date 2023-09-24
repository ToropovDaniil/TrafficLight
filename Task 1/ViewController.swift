//
//  ViewController.swift
//  Task 1
//
//  Created by Alexey Efimov on 10.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trafficView: UIStackView!
    @IBOutlet weak var trafficRedView: UIView!
    @IBOutlet weak var trafficYellowView: UIView!
    @IBOutlet weak var trafficGreenView: UIView!
    @IBOutlet weak var trafficButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficRedView.layer.cornerRadius = trafficRedView.frame.width / 2
        trafficYellowView.layer.cornerRadius = trafficYellowView.frame.width / 2
        trafficGreenView.layer.cornerRadius = trafficGreenView.frame.width / 2
        
        trafficRedView.alpha = 0.5
        trafficYellowView.alpha = 0.5
        trafficGreenView.alpha = 0.5
        
        trafficButton.layer.cornerRadius = 10
        trafficButton.setTitle("Start", for: .normal)
        
    }
    @IBAction func trafficButtonPressed() {
        if trafficRedView.alpha == 0.5
            && trafficYellowView.alpha == 0.5
            && trafficGreenView.alpha == 0.5
        {
            trafficRedView.alpha = 1
            trafficButton.setTitle("Next", for: .normal)
            print(trafficRedView.alpha, trafficYellowView.alpha, trafficGreenView.alpha)
        }
        else if trafficRedView.alpha == 1 {
            trafficRedView.alpha = 0.5
            trafficYellowView.alpha = 1
        }
        else if trafficYellowView.alpha == 1 {
            trafficYellowView.alpha = 0.5
            trafficGreenView.alpha = 1
            print(trafficRedView.alpha, trafficYellowView.alpha, trafficGreenView.alpha)
        }
        else if trafficGreenView.alpha == 1 {
            trafficGreenView.alpha = 0.5
            trafficRedView.alpha = 1
        }
    }
}
