//
//  ViewController.swift
//  SegmentControlWithTabelView
//
//  Created by sainath bamen on 06/02/23.
//

import UIKit

class ViewController: UIViewController {
    var country = ["India", "Russia", "Japan", "USA", "UK", "India", "Russia", "Japan", "USA", "UK", "India", "Russia", "Japan", "USA", "UK", "India", "Russia", "Japan", "USA", "UK"]
    
    var sports = ["Hockey", "IceHockey", "Sumo", "Baseball", "Cricket","Hockey", "IceHockey", "Sumo", "Baseball", "Cricket", "Hockey", "IceHockey", "Sumo", "Baseball", "Cricket","Hockey", "IceHockey", "Sumo", "Baseball", "Cricket"]

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var MyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentControlAction(_ sender: Any) {
        MyTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentControl.selectedSegmentIndex{
        case 1:
            return country.count
        case 2:
            return sports.count
        default:
            break
     
        }
        return country.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        switch segmentControl.selectedSegmentIndex{
        case 0:
            cell?.textLabel?.text = country[indexPath.row]
        case 1:
            cell?.textLabel?.text = sports[indexPath.row]
            
        default:
            break
        }
        return cell!
   
    }
    
    
}
