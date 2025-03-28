//
//  ViewController.swift
//  Shoppe
//
//  Created by Gaurav Patel on 28/03/25.
//

import UIKit

// MARK: - Global Typealias
public typealias TableViewDelegateDatasource = UITableViewDelegate & UITableViewDataSource


// MARK: - View Controller

class StartVC: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    // MARK: Variables
    public typealias TableViewDelegateDatasource = UITableViewDelegate & UITableViewDataSource

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension StartVC: TableViewDelegateDatasource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.LoginConstants.StartVCCell, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
