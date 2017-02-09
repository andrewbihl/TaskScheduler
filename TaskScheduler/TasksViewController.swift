//
//  TasksViewController.swift
//  TaskScheduler
//
//  Created by Andrew Bihl on 2/9/17.
//  Copyright © 2017 Andrew Bihl. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.row)")
        let cell = tableView.cellForRow(at: indexPath) as! TaskTableViewCell
        cell.checkBoxClicked()
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell") as! TaskTableViewCell
        cell.configureCellWithTask(task: DataServer.defaultServer.getTasks()[indexPath.row])
//        cell?.textLabel?.text = DataServer.defaultServer.getTasks()[indexPath.row]
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServer.defaultServer.getTasks().count;
    }

    
}
