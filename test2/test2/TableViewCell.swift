//
//  TableViewCell.swift
//  test2
//
//  Created by Mykhailo Romanyshyn on 18.10.2020.
//

import UIKit
import Foundation

struct Recruiter {
   var name: String
   var image: UIImage
   var subtitle: String
   var contact: String
   var qr: UIImage
   var link: String
   var email: String
   var skype: String
}

struct MocGenerator {
    static func generateRecruiters() -> [Recruiter] {
        var recruiters = [Recruiter]()
    let recruiterOlha = Recruiter(name: "Olha Yurha", image:  UIImage(named: "RecruiterOlha")!, subtitle: "Head of Recruitment", contact: "Phone number: +380 93 192 3371", qr: UIImage(named: "OlhaQR")!, link: "Linkedin", email: "Email: olha.yurha@avenga.com", skype: "Skype name: shine211293")
        recruiters.append(recruiterOlha)
    let recruiterYuliana = Recruiter(name: "Yuliana Koval", image: UIImage(named: "RecruiterYulia")!, subtitle: "Senior Recruiter", contact: "Phone number: +380 96 764 1914", qr: UIImage(named: "YulianaQR")!, link: "Linkedin", email: "Email: yuliana.koval@avenga.com", skype: "Skype name: yulya.koval")
        recruiters.append(recruiterYuliana)
    let recruiterSolomiia =  Recruiter(name: "Solomiia Hutnyk", image: UIImage(named: "RecruiterSolomia")!, subtitle: "Junior Recruiter", contact: "Phone number: +380 63 038 0794", qr: UIImage(named: "SolomiiaQR")!, link: "Linkedin", email: "Email: solomiia.hutnyk@avenga.com", skype: "Skype name: live:solomiya.hutnyk")
        recruiters.append(recruiterSolomiia)
    return recruiters
    }
}

class TableViewCell: UITableViewCell {
    

   
    @IBOutlet private weak var recruitersCellImage: UIImageView!
    @IBOutlet private weak var recruitersCellName: UILabel!
    @IBOutlet weak var recruiterCellSubtitle: UILabel!
    @IBOutlet weak var recruiterCellContakt: UILabel!
    @IBOutlet weak var recruiterCellEmail: UILabel!
    @IBOutlet weak var recruiterCellskype: UILabel!
    @IBOutlet weak var recruiterCellLink: UILabel!
    @IBOutlet weak var recruiterCellQR: UIImageView!
    @IBOutlet weak var recruiterViewCard: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 0.95, green: 0.99, blue: 1, alpha: 1)
        selectionStyle = .none
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        recruiterViewCard.layer.cornerRadius = 10
        recruiterViewCard.layer.shadowPath = UIBezierPath(rect: recruiterViewCard.bounds).cgPath
        recruiterViewCard.layer.shadowColor = UIColor.lightGray.cgColor
        recruiterViewCard.layer.shadowRadius = 3
        recruiterViewCard.layer.shadowOffset = .zero
        recruiterViewCard.layer.shadowOpacity = 0.2
      
    }
    

    func update(name: String, image: UIImage, subtitle: String, contact: String, qr: UIImage, link: String, email: String, skype: String) {
        recruitersCellName.text = name
        recruitersCellImage.image = image
        recruiterCellSubtitle.text = subtitle
        recruiterCellContakt.text = contact
        recruiterCellLink.text = link
        recruiterCellQR.image = qr
        recruiterCellEmail.text = email
        recruiterCellskype.text = skype
        }
    
}




