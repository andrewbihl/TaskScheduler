//
//  TaskTableViewCell.swift
//  TaskScheduler
//
//  Created by Andrew Bihl on 2/9/17.
//  Copyright © 2017 Andrew Bihl. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet var checkBox: UIImageView!
    @IBOutlet var check: UIImageView!
    @IBOutlet var taskLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        check.alpha = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configureCellWithTask(task: String) -> Void {
        self.taskLabel.text = task
    }
    
    public func checkBoxClicked() -> Void {
        if (self.check.alpha == 0){
            self.check.alpha = 1
        } else{
            self.check.alpha = 0
        }
    }
}
