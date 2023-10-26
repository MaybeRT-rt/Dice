//
//  ViewController.swift
//  DiceApp
//
//  Created by Liz-Mary on 25.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let diceView = DiceView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        diceView.rollButton.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        
        view.addSubview(diceView.backgroundImageView)
        view.addSubview(diceView.logoImageView)
        view.addSubview(diceView.diceOneImageView)
        view.addSubview(diceView.diceTwoImageView)
        view.addSubview(diceView.rollButton)
        
        NSLayoutConstraint.activate([
            diceView.backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            diceView.backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            diceView.backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            diceView.backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            diceView.logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            diceView.logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            diceView.logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            diceView.diceOneImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            diceView.diceOneImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            diceView.diceOneImageView.widthAnchor.constraint(equalToConstant: 120),
            diceView.diceOneImageView.heightAnchor.constraint(equalToConstant: 120),
            
            diceView.diceTwoImageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            diceView.diceTwoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            diceView.diceTwoImageView.widthAnchor.constraint(equalToConstant: 120),
            diceView.diceTwoImageView.heightAnchor.constraint(equalToConstant: 120),
            
            diceView.rollButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            diceView.rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            diceView.rollButton.widthAnchor.constraint(equalToConstant: 100),
            diceView.rollButton.heightAnchor.constraint(equalToConstant: 75),
        ])
    }
    
    @objc func rollButtonTapped() {
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        if !diceArray.isEmpty {
            let randomIndex1 = Int.random(in: 0..<diceArray.count)
            let randomIndex2 = Int.random(in: 0..<diceArray.count)
            
            diceView.diceOneImageView.image = diceArray[randomIndex1]
            diceView.diceTwoImageView.image = diceArray[randomIndex2]
        }
    }
}
