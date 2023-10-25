//
//  DiceView.swift
//  DiceApp
//
//  Created by Liz-Mary on 25.10.2023.
//

import UIKit

class DiceView: UIView {
    let backgroundImageView: UIImageView = {
        let background = UIImageView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.image = UIImage(named: "GreenBackground")
        return background
    }()
    
    let logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "DiceeLogo")
        return logo
    }()
    
    lazy var diceOneImageView: UIImageView = {
        let diceOne = UIImageView()
        diceOne.translatesAutoresizingMaskIntoConstraints = false
        diceOne.contentMode = .scaleAspectFit
        diceOne.image = UIImage(named: "DiceOne")
        return diceOne
    }()
    
    lazy var diceTwoImageView: UIImageView = {
        let diceTwo = UIImageView()
        diceTwo.translatesAutoresizingMaskIntoConstraints = false
        diceTwo.contentMode = .scaleAspectFit
        diceTwo.image = UIImage(named: "DiceTwo")
        return diceTwo
    }()
    
    lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Roll", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(hex: 0x8E2925)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 40)
        return button
    }()
    
    let viewImage: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(diceOneImageView)
        addSubview(diceTwoImageView)
        addSubview(rollButton)
    }
}
