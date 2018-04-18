//
//  viewController2.swift
//  piedrapapeltijeralagartospock
//
//  Created by Alumno IDS on 17/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        
        setupViews()
    }
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    let ComTextField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let playerTextField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let ResultadoTextField : UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let ReturnButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.green
        button.setTitle("Play Again?", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleLoginRegister), for: .touchUpInside)
        return button
    }()
    
    @objc func handleLoginRegister(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupViews(){
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(ComTextField)
        inputContainerView.addSubview(playerTextField)
        inputContainerView.addSubview(ResultadoTextField)
        view.addSubview(ReturnButton)
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        ComTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        ComTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        ComTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        ComTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
       playerTextField.topAnchor.constraint(equalTo: ComTextField.bottomAnchor).isActive = true
        playerTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        playerTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        playerTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        ResultadoTextField.topAnchor.constraint(equalTo: playerTextField.bottomAnchor).isActive = true
        ResultadoTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        ResultadoTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        ResultadoTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        ReturnButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ReturnButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 15  ).isActive = true
        ReturnButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ReturnButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
    }
}
