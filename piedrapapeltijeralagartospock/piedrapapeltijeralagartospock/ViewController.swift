//
//  ViewController.swift
//  piedrapapeltijeralagartospock
//
//  Created by Alumno IDS on 17/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var piedra = 0, papel = 1, tijera = 2,lagarto = 3, spock = 4
    var com:String?
    var player:String?
    var winer:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        setupViews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }
    
    let PiedraButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.blue
        button.setTitle("Piedra", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(RandomPiedra), for: .touchUpInside)
        return button
    }()
    
    let lagartoButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.blue
        button.setTitle("lagarto", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(Randomlagarto), for: .touchUpInside)
        return button
    }()
    
    let spockButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.blue
        button.setTitle("spock", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(Randomspock), for: .touchUpInside)
        return button
    }()
  
    let PapelButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.green
        button.setTitle("Papel", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(RandomPapel), for: .touchUpInside)
        return button
    }()
    
    let TijeraButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.red
        button.setTitle("Tijera", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(RandomTijera), for: .touchUpInside)
        return button
    }()
    
 
    @objc func RandomPiedra(){
        let Random = arc4random_uniform(3)
        if Random == UInt32(piedra){
            com = "Piedra"
            player = "Piedra"
            winer = "Empate"}
        else if Random == UInt32(papel) {
            com = "Papel"
            player = "Piedra"
            winer = "Pierdes"}
            
        else if Random == UInt32(lagarto) {
            com = "lagarto"
            player = "Piedra"
            winer = "Pierdes"}
            
        else if Random == UInt32(tijera) {
            com = "Tijera"
            player = "Piedra"
            winer = "Ganaste"}
        Resultado()
    }
    @objc func Randomspock(){
        let Random = arc4random_uniform(4)
        if Random == UInt32(spock){
            com = "spock"
            player = "Piedra"
            winer = "Empate"}
        else if Random == UInt32(papel) {
            com = "Papel"
            player = "Piedra"
            winer = "Pierdes"}
        if Random == UInt32(lagarto){
            com = "lagarto"
            player = "spock"
            winer = "ganas"}
            
        else if Random == UInt32(tijera) {
            com = "Tijera"
            player = "Piedra"
            winer = "Ganaste"}
        Resultado()
    }

    @objc func Randomlagarto(){
        let Random = arc4random_uniform(3)
        if Random == UInt32(piedra){
            com = "Piedra"
            player = "Piedra"
            winer = "Empate"}
        else if Random == UInt32(papel) {
            com = "Papel"
            player = "Piedra"
            winer = "Pierdes"}
        else if Random == UInt32(lagarto) {
            com = "lagarto"
            player = "spock"
            winer = "Pierdes"}
        else if Random == UInt32(spock) {
            com = "tijeras"
            player = "spock"
            winer = "ganas"}
        else if Random == UInt32(tijera) {
            com = "Tijera"
            player = "Piedra"
            winer = "Ganaste"}
        Resultado()
    }
    
    
    @objc func RandomPapel(){
        let Random = arc4random_uniform(4)
        if Random == UInt32(piedra){
            com = "Piedra"
            player = "Papel"
            winer = "Ganaste"}
        else if Random == UInt32(papel) {
            com = "Papel"
            player = "Papel"
            winer = "Empate"}
        else if Random == UInt32(tijera) {
            com = "Tijera"
            player = "Papel"
            winer = "Pierdes"}
        Resultado()
    }
    
  
    @objc func RandomTijera(){
        let Random = arc4random_uniform(4)
        if Random == UInt32(piedra){
            com = "Piedra"
            player = "Tijera"
            winer = "Pierdes"}
        else if Random == UInt32(papel) {
            com = "Papel"
            player = "Tijera"
            winer = "Ganaste"}
        else if Random == UInt32(tijera) {
            com = "Tijera"
            player = "Tijera"
            winer = "Empate"}
        Resultado()
    }
    
    func setupViews(){
        view.addSubview(PiedraButton)
        view.addSubview(PapelButton)
        view.addSubview(TijeraButton)
        
  
        PiedraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        PiedraButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        PiedraButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -350).isActive = true
        PiedraButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
       
        PapelButton.topAnchor.constraint(equalTo: PiedraButton.bottomAnchor,constant: 10).isActive = true
        PapelButton.widthAnchor.constraint(equalTo: PiedraButton.widthAnchor).isActive = true
        PapelButton.leftAnchor.constraint(equalTo: PiedraButton.leftAnchor).isActive = true
        PapelButton.heightAnchor.constraint(equalTo: PiedraButton.heightAnchor).isActive = true
    
        TijeraButton.topAnchor.constraint(equalTo: PapelButton.bottomAnchor,constant: 10).isActive = true
        TijeraButton.widthAnchor.constraint(equalTo: PapelButton.widthAnchor).isActive = true
        TijeraButton.leftAnchor.constraint(equalTo: PapelButton.leftAnchor).isActive = true
        TijeraButton.heightAnchor.constraint(equalTo: PapelButton.heightAnchor).isActive = true
        
        lagartoButton.topAnchor.constraint(equalTo: TijeraButton.bottomAnchor,constant: 10).isActive = true
        lagartoButton.widthAnchor.constraint(equalTo: TijeraButton.widthAnchor).isActive = true
        lagartoButton.leftAnchor.constraint(equalTo: TijeraButton.leftAnchor).isActive = true
        lagartoButton.heightAnchor.constraint(equalTo: TijeraButton.heightAnchor).isActive = true
        
        
        spockButton.topAnchor.constraint(equalTo: lagartoButton.bottomAnchor,constant: 10).isActive = true
        spockButton.widthAnchor.constraint(equalTo: lagartoButton.widthAnchor).isActive = true
        spockButton.leftAnchor.constraint(equalTo: lagartoButton.leftAnchor).isActive = true
        spockButton.heightAnchor.constraint(equalTo: lagartoButton.heightAnchor).isActive = true
    }
    
    
    
   
    func Resultado(){
        let viewController2: ViewController2 = ViewController2()
        viewController2.ComTextField.text = "CPU: " + com!
        viewController2.playerTextField.text = "Jugador: " + player!
        viewController2.ResultadoTextField.text = winer!
        present(viewController2, animated: true, completion: nil)
    }
}
