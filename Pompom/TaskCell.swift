//
//  TaskCell.swift
//  Pompom
//
//  Created by Zion Tuiasoa on 2/21/23.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var checkOffButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        taskLabel.textColor = UIColor(red: 55.0/255.0, green: 101.0/255.0, blue: 117.0/255.0, alpha: 1.0)
    }

    @IBAction func checkOffButton(_ sender: UIButton) {
        if let uncheckedImage = UIImage(systemName: "circle") {
               let checkedImage = UIImage(systemName: "checkmark.circle.fill")
               sender.isSelected.toggle()
               sender.setImage(sender.isSelected ? checkedImage : uncheckedImage, for: .normal)
           }
    }
}
