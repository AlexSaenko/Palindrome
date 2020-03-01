//
//  ViewController.swift
//  Palindrome
//
//  Created by Anton Shvets on 3/1/20.
//  Copyright © 2020 Hahaton. All rights reserved.
//

import UIKit

// model
extension IdeasListViewController {
    struct Idea {
        let text: String
    }
}

class IdeasListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Idea] = [
        Idea(text: "idea1"),
        Idea(text: "idea2"),
        Idea(text: "idea3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension IdeasListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
