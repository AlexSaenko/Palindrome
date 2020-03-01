//
//  ViewController.swift
//  Palindrome
//
//  Created by Anton Shvets on 3/1/20.
//  Copyright © 2020 Hahaton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let network = Network()
    
    override func viewDidLoad() {
        super.viewDidLoad()   
        network.getIdeas { ideas in print(ideas) }
    }
}

