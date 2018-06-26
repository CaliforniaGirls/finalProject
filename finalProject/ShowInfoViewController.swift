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
    @IBOutlet weak var firstNameText: UITextView!
    @IBOutlet weak var lastNameText: UITextView!
    @IBOutlet weak var emailText: UITextView!
    @IBOutlet weak var instagramText: UITextView!
    @IBOutlet weak var snapchatText: UITextView!
    @IBOutlet weak var twitterText: UITextView!
    
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
        firstNameText.text = firstName
        lastNameText.text = lastName
        emailText.text = email
        instagramText.text = instagram
        snapchatText.text = snapchat
        twitterText.text = twitter
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
