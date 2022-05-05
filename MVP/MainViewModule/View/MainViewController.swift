//
//  MainViewController.swift
//  MVP
//
//  Created by Vladislav Miroshnichenko on 04.08.2021.
//

import UIKit

final class MainViewController: UITableViewController {
    
    public var presenter: MainViewPresenterProtocol!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadUsers()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return presenter.getUsers().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let user = presenter.getUser(at: indexPath.row)
        cell.textLabel?.text = user.name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.openDetailView(at: indexPath.row)
    }

}

extension MainViewController: MainViewProtocol {
    public func updateTable() {
        tableView.reloadData()
    }
}
