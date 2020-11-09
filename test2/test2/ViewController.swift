//
//  ViewController.swift
//  test2
//
//  Created by Mykhailo Romanyshyn on 15.10.2020.
//

import UIKit


class ViewController: UIViewController, UITextViewDelegate {
    
    private var recruiters: [Recruiter] = []
    
  
    @IBOutlet weak var addRecruiterButton: UIButton!
    @IBOutlet weak var recruiterDataView: UIView!
    @IBOutlet private weak var tableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRecruiterButton.layer.cornerRadius = 10
        recruiters = MocGenerator.generateRecruiters()
        recruiterDataView.backgroundColor = UIColor(red: 0.95, green: 0.99, blue: 1, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(red: 0.95, green: 0.99, blue: 1, alpha: 1)
      }
     
    }

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recruiters.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 279
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OlhaRecruiter", for: indexPath)
           as! TableViewCell

        let recruiter = recruiters[indexPath.row]
        cell.update(name: recruiter.name, image: recruiter.image, subtitle: recruiter.subtitle, contact: recruiter.contact, qr: recruiter.qr, link: recruiter.link, email: recruiter.email, skype: recruiter.skype)
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: tableView.bounds.width)
        return cell
        
    }

}

        
    
