//
//  ShowDetailViewController.swift
//  Exam1
//
//  Created by Mobio on 5/25/17.
//  Copyright © 2017 Mobio. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {
    
    
    var   nameFromPrev = ""
    var   uniFromPrev = ""
    var   deptFromPrev = ""
    var   passFromPrev = ""
    var   imageFromPrev: UIImage!
    
    @IBOutlet weak var nameinfo: UILabel!
    @IBOutlet weak var univInfo: UILabel!
    
    @IBOutlet weak var passInfo: UILabel!
    
    @IBOutlet weak var deptInfo: UILabel!
    
    
    @IBOutlet weak var ShowImageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //print(nameFromPrev)
        
        nameinfo.text = nameFromPrev
        univInfo.text = uniFromPrev
        deptInfo.text = deptFromPrev
        passInfo.text = passFromPrev
        ShowImageOutlet.image = imageFromPrev
        
        print(deptFromPrev)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancellAction(_ sender: UIBarButtonItem) {
        
        
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var cancel: UIBarButtonItem!
   

}
