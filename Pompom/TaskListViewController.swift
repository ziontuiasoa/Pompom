//
//  ViewController.swift
//  Pompom
//
//  Created by Zion Tuiasoa on 2/21/23.
//

import UIKit
import Combine

class TaskListViewController: UITableViewController {

    //temp list
    let tasks = ["Code", "Feed the squirrels", "Drink so much coffee", "Play guitar"]
    
    private let navigationSubject = PassthroughSubject<Task, Never>()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  // MARK: - Navigation Helpers
    
    func navigateToDetail() {
        navigationSubject.send(.detail)
    }
    
  // MARK: - UITableViewDataSource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        cell.taskLabel.text = tasks[indexPath.row]
        cell.checkOffButton.setImage(UIImage(systemName: "circle"), for: .normal)
        cell.checkOffButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        cell.checkOffButton.isSelected = tableView.indexPathsForSelectedRows?.contains(indexPath) ?? false
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
        
        
    }
}

