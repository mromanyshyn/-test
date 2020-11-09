//
//  ModalViewController.swift
//  test2
//
//  Created by Mykhailo Romanyshyn on 26.10.2020.
//

import UIKit

class ModalViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    private var imagePicker: UIImagePickerController!

    @IBOutlet weak var addRecruiterImage: UIImageView!
    @IBOutlet weak var addRecruiterQR: UIImageView!
    @IBOutlet weak var addRecruterPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.borderWidth = 5
        self.view.layer.borderColor = UIColor.lightGray.cgColor
        self.view.layer.cornerRadius = 20
        addRecruiterImage.layer.masksToBounds = true
        addRecruiterImage.layer.borderWidth = 1.5
        addRecruiterImage.layer.borderColor = UIColor.purple.cgColor
        addRecruiterImage.layer.cornerRadius = addRecruiterImage.bounds.width / 2
        addRecruiterQR.layer.masksToBounds = true
        addRecruiterQR.layer.borderWidth = 1.5
        addRecruiterQR.layer.borderColor = UIColor.purple.cgColor
        addRecruiterQR.layer.cornerRadius = addRecruiterQR.bounds.width / 2
        addRecruterPressed.layer.cornerRadius = 10
    }
    
    @IBAction func closeModalPressed(_ sender: AnyObject) {
            dismiss(animated: false, completion: nil)
    }
    
    @IBAction func addPicturesClick(_ sender: Any) {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        addRecruiterImage.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        addRecruiterQR.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
    }
       
}
