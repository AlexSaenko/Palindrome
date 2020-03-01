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
     let network = Network()
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [Idea] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        network.getIdeas { ideas in
            self.list = ideas.map({ (idea) -> IdeasListViewController.Idea in
                return IdeasListViewController.Idea(text: idea.title)
            })
        }
    }

}

extension IdeasListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let idea = list[indexPath.row]
        cell.textLabel?.text = idea.text
        return cell
    }
}
