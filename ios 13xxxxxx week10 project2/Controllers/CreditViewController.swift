//
//  CreditViewController.swift
//  ios 13xxxxxx week10 project2
//
//  Created by Kowit Meboon on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "fullname"
    
    @IBOutlet weak var fullnameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullnameLable.text = fullname
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
