//
//  SearchViewController.swift
//  Sample-App
//
//  Created by terminal on 28/10/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: view.frame)
        return view
    }()
    
    lazy var searchController: UISearchController = {
        let vc = UISearchController()
        vc.hidesNavigationBarDuringPresentation = false
        vc.obscuresBackgroundDuringPresentation = false
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(tableView)
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchBar.becomeFirstResponder()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
