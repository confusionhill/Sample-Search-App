//
//  ViewController.swift
//  Sample-App
//
//  Created by terminal on 28/10/23.
//

import UIKit

class ViewController: UIViewController{
    
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
    
    lazy var coverView: UIView = {
        let view = UIView(frame: searchController.view.frame)
        view.backgroundColor = .clear
        searchController.searchBar.addSubview(view)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        self.tableView.tableHeaderView = searchController.searchBar
        coverView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.didTapCoverView(sender:))))
    }
    
    @objc func didTapCoverView(sender: UITapGestureRecognizer) {
        let vc: SearchViewController = SearchViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}

