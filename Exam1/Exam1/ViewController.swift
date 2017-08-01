//
//  ViewController.swift
//  Exam1
//
//  Created by Mobio on 5/25/17.
//  Copyright © 2017 Mobio. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var universityText: UITextField!
    @IBOutlet weak var passingText: UITextField!
    @IBOutlet weak var deptText: UITextField!
    
    var name: String = ""
    var university: String = ""
    var passingYear: String = ""
    var deptName: String = ""
    var image: UIImage?
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameText.delegate = self
        universityText.delegate = self
        passingText.delegate = self
        deptText.delegate = self
        
        //add tap gesture on imageView
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.imagePressed))
        
        imageOutlet.isUserInteractionEnabled = true  // this line is important
        
        imageOutlet.addGestureRecognizer(tapGesture)
        
    }
    
    func imagePressed() {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        imagePickerController.sourceType = .photoLibrary
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
    //imagepicker controller delegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        imageOutlet.image = selectedImage
        dismiss(animated: true, completion: nil)
        
        
    }
    
    

    //textfield delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        nameText.resignFirstResponder()
        universityText.resignFirstResponder()
        passingText.resignFirstResponder()
        deptText.resignFirstResponder()
        return true
        
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //nameText.resignFirstResponder()
        nameText.resignFirstResponder()
        universityText.resignFirstResponder()
        passingText.resignFirstResponder()
        deptText.resignFirstResponder()
        
        
    }
    
    
    @IBAction func submitAction(_ sender: Any) {
        
        name = (nameText?.text)!
        university = (universityText?.text)!
        passingYear = passingText.text!
        deptName = deptText.text!
        image = imageOutlet.image

        nameText.text = ""
        universityText.text = ""
        passingText.text = ""
        deptText.text = ""
        imageOutlet.image =  UIImage(named:"DefaultImage")!
        
        
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        switch(segue.identifier ?? ""){
        case "ShowDetail":
                let controller = segue.destination as! ShowDetailViewController
               // print("Run 1")
                //controller.nameinfo.text = "Something"
                //print("Run 2")
                controller.nameFromPrev = self.name
                controller.deptFromPrev = self.deptName
                controller.uniFromPrev = self.university
                controller.passFromPrev = self.passingYear
                controller.imageFromPrev = self.image
         
            case "ListOfUsers":
//                let controller = segue.destination as! TableTableViewController
//                controller.
           print("later")

        default:
            print("something is wrong")
        }
    }
}

