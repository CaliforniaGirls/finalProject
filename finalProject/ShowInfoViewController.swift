//
//  ShowInfoViewController.swift
//  finalProject
//
//  Created by Vivian Phung on 6/26/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ShowInfoViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var snapchatLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var instagram: String = ""
    var snapchat: String = ""
    var twitter: String = ""
    
    @IBAction func editInfoAction(_ sender: Any) {
        performSegue(withIdentifier: "editInfo", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = firstName
        lastNameLabel.text = lastName
        emailLabel.text = email
        instagramLabel.text = instagram
        snapchatLabel.text = snapchat
        twitterLabel.text = twitter
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "editInfo") {
            print("begun")
            let changeInfo = segue.destination as! GetInfoViewController
            changeInfo.firstName = firstName
            changeInfo.lastName = lastName
            changeInfo.email = email
            changeInfo.instagramHandle = instagram
            changeInfo.snapchatHandle = snapchat
            changeInfo.twitterHandle = twitter
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
