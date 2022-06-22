//
//  ViewController.swift
//  Demo
//
//  Created by Anuja Ladge on 22/06/22.
//dftfjgy
//changes made

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTableView()
       
    }
    private func setTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    override func viewWillLayoutSubviews() {
        self.tableViewHeight.constant = self.tableView.contentSize.height
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
}

