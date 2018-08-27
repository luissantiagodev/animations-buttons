//
//  ViewController.swift
//  Buttons Animation
//
//  Created by Legendary Wicho on 8/27/18.
//  Copyright © 2018 Luis Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let mainStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.alignment = .fill
        return stack
    }()
    
    let pulseButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pulse", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        button.tintColor = .white
        button.addTarget(self, action: #selector(onPulseClick), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let flashButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Flash", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.2494668324, blue: 0.154406553, alpha: 1)
        button.tintColor = .white
        button.addTarget(self, action: #selector(onFlashClick), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    let shakeButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Shake", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        button.tintColor = .white
        button.addTarget(self, action: #selector(onShakeClick), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpMainLayout()
    }
    
    
    @objc func onPulseClick (_ sender : UIButton){
        sender.pulsate()
    }
    
    @objc func onFlashClick (_ sender : UIButton){
        sender.flash()
    }
    
    @objc func onShakeClick (_ sender : UIButton){
        sender.shake()
    }
    
    
    func setUpMainLayout(){
        view.addSubview(mainStack)
        NSLayoutConstraint.activate([
                mainStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                mainStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                mainStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                mainStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
        let containerButton = UIView()
        let secondContainerButton = UIView()
        let thirdContainerButton = UIView()
        
        containerButton.addSubview(pulseButton)
        NSLayoutConstraint.activate([
                pulseButton.centerXAnchor.constraint(equalTo: containerButton.centerXAnchor),
                pulseButton.centerYAnchor.constraint(equalTo: containerButton.centerYAnchor),
                pulseButton.heightAnchor.constraint(equalToConstant: 70),
                pulseButton.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        secondContainerButton.addSubview(flashButton)
        
        NSLayoutConstraint.activate([
            flashButton.centerXAnchor.constraint(equalTo: secondContainerButton.centerXAnchor),
            flashButton.centerYAnchor.constraint(equalTo: secondContainerButton.centerYAnchor),
            flashButton.heightAnchor.constraint(equalToConstant: 70),
            flashButton.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        
        thirdContainerButton.addSubview(shakeButton)
        NSLayoutConstraint.activate([
            shakeButton.centerXAnchor.constraint(equalTo: thirdContainerButton.centerXAnchor),
            shakeButton.centerYAnchor.constraint(equalTo: thirdContainerButton.centerYAnchor),
            shakeButton.heightAnchor.constraint(equalToConstant: 70),
            shakeButton.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        
        mainStack.addArrangedSubview(containerButton)
        mainStack.addArrangedSubview(secondContainerButton)
        mainStack.addArrangedSubview(thirdContainerButton)
    }
}

