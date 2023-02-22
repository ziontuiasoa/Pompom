//
//  ViewController.swift
//  Pompom
//
//  Created by Zion Tuiasoa on 2/21/23.
//

import UIKit

class TaskListViewController: UITableViewController {

    //temp list
    let tasks = ["Code", "Feed the squirrels", "Drink so much coffee", "Play guitar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  // MARK: - UITableViewDataSource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO: - Add note detail view for task
        
    }

}

