//
//  GetInfoViewController.swift
//  finalProject
//
//  Created by Vivian Phung on 6/26/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class GetInfoViewController: UIViewController {
    @IBOutlet weak var getInfoLabelTop: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var snapchatLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var instagramText: UITextField!
    @IBOutlet weak var snapchatText: UITextField!
    @IBOutlet weak var twitterText: UITextField!
    @IBOutlet weak var submitButtonOne: UIButton!
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var instagramHandle: String = ""
    var snapchatHandle: String = ""
    var twitterHandle: String = ""
    
    @IBAction func submitInfo(_ sender: Any) {
        firstName = firstNameText.text!
        lastName = lastNameText.text!
        email = emailText.text!
        instagramHandle = instagramText.text!
        snapchatHandle = snapchatText.text!
        twitterHandle = twitterText.text!
        performSegue(withIdentifier: "showMyInfo", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameText.text = firstName
        lastNameText.text = lastName
        emailText.text = email
        instagramText.text = instagramHandle
        snapchatText.text = snapchatHandle
        twitterText.text = twitterHandle
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showMyInfo") {
            print("start move")
            let showInfo = segue.destination as! ShowInfoViewController
            showInfo.firstName = firstName
            showInfo.lastName = lastName
            showInfo.email = email
            showInfo.instagram = instagramHandle
            showInfo.snapchat = snapchatHandle
            showInfo.twitter = twitterHandle
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
