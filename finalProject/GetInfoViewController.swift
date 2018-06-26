//
//  GetInfoViewController.swift
//  finalProject
//
//  Created by Vivian Phung on 6/26/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class GetInfoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var getInfoLabelTop: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var snapchatLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var spotifyLabel: UILabel!
    @IBOutlet weak var youtubeLabel: UILabel!
    
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var instagramText: UITextField!
    @IBOutlet weak var snapchatText: UITextField!
    @IBOutlet weak var twitterText: UITextField!
    @IBOutlet weak var spotifyText: UITextField!
    @IBOutlet weak var youtubeText: UITextField!
    
    @IBOutlet weak var submitButtonOne: UIButton!
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var instagramHandle: String = ""
    var snapchatHandle: String = ""
    var twitterHandle: String = ""
    var spotifyHandle: String = ""
    var youtubeHandle: String = ""
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func submitInfo(_ sender: Any) {
        firstName = firstNameText.text!
        lastName = lastNameText.text!
        email = emailText.text!
        instagramHandle = instagramText.text!
        snapchatHandle = snapchatText.text!
        twitterHandle = twitterText.text!
        spotifyHandle = spotifyText.text!
        youtubeHandle = youtubeText.text!
        
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
        spotifyText.text = spotifyHandle
        youtubeText.text = youtubeHandle

        firstNameText.delegate = self
        lastNameText.delegate = self
        emailText.delegate = self
        instagramText.delegate = self
        snapchatText.delegate = self
        twitterText.delegate = self
        spotifyText.delegate = self
        youtubeText.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showMyInfo") {
            print("getInfo segue")
            let showInfo = segue.destination as! ShowInfoViewController
            print("getInfo let")
            showInfo.firstName = firstName
            print("getInfo fname")
            showInfo.lastName = lastName
            print("getInfo lname")
            showInfo.email = email
            print("getInfo email")
            showInfo.instagram = instagramHandle
            print("getInfo instagram")
            showInfo.snapchat = snapchatHandle
            print("getInfo snapchat")
            showInfo.twitter = twitterHandle
            print("getInfo twitter")
            showInfo.spotify = spotifyHandle
            showInfo.youtube = youtubeHandle
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
