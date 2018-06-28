//
//  ShowInfoViewController.swift
//  finalProject
//
//  Created by Vivian Phung on 6/26/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit
import MessageUI

class CopyableLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.sharedInit()
    }
    
    func sharedInit() {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(self.showMenu)))
    }
    
    @objc func showMenu(sender: AnyObject?) {
        self.becomeFirstResponder()
        
        let menu = UIMenuController.shared
        
        if !menu.isMenuVisible {
            menu.setTargetRect(bounds, in: self)
            menu.setMenuVisible(true, animated: true)
        }
    }
    
    override func copy(_ sender: Any?) {
        let board = UIPasteboard.general
        
        board.string = text
        
        let menu = UIMenuController.shared
        
        menu.setMenuVisible(false, animated: true)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return action == #selector(UIResponderStandardEditActions.copy)
    }
}

class ShowInfoViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var snapchatLabel: UILabel!
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var spotifyLabel: UILabel!
    @IBOutlet weak var youtubeLabel: UILabel!
    
    
    @IBOutlet weak var emailGo: UIButton!
    @IBOutlet weak var instagramGo: UIButton!
    @IBOutlet weak var snapchatGo: UIButton!
    @IBOutlet weak var twitterGo: UIButton!
    @IBOutlet weak var spotifyGo: UIButton!
    @IBOutlet weak var youtubeGo: UIButton!
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var instagram: String = ""
    var snapchat: String = ""
    var twitter: String = ""
    var spotify: String = ""
    var youtube: String = ""
    
    var instagramLink: String = "https://www.instagram.com/"
    var TwitterLink: String = "https://www.twitter.com/"
    var spotifyLink: String = "https://www.spotify.com/"
    var youtubeLink: String = "https://www.youtube.com/"
    var snapchatLink: String = "https://www.snapchat.com/add/"

    
    @IBAction func emailAction(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([email])
            mail.setMessageBody("<p>Sent from California</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            print("cannot send mail")
            func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
                controller.dismiss(animated: true)
            }
        }
    }

   

    
    
    @IBAction func instagramAction(_ sender: Any) {
        if (instagramLabel.text!.isEmpty){
            print("No instagram added.")
        }
        else {
            instagramLink = instagramLink + instagramLabel.text!
            UIApplication.shared.open(URL(string: instagramLink)! as URL, options: [:], completionHandler: { (status) in
                
            })
            instagramLink = "https://www.instagram.com/"
        }
    }
    @IBAction func snapchatAction(_ sender: Any) {
        if (snapchatLabel.text!.isEmpty){
            print("No snapchat added.")
        }
        else {
            snapchatLink = snapchatLink + snapchatLabel.text!
            UIApplication.shared.open(URL(string: snapchatLink)! as URL, options: [:], completionHandler: { (status) in
                
            })
            snapchatLink = "https://www.snapchat.com/add/"
        }
    }
    
    @IBAction func twitterAction(_ sender: Any) {
        if (twitterLabel.text!.isEmpty){
            print("No twitter added.")
        }
        else {
            TwitterLink = TwitterLink + twitterLabel.text!
            UIApplication.shared.open(URL(string: TwitterLink)! as URL, options: [:],
                                      completionHandler: {  (status) in
                                        
            })
            TwitterLink = "https://www.twitter.com/"
            
        }
    }
    
    @IBAction func spotifyAction(_ sender: Any) {
        if (spotifyLabel.text!.isEmpty){
            print("No spotify added.")
        }
        else {
            spotifyLink = spotifyLink + spotifyLabel.text!
            UIApplication.shared.open(URL(string: spotifyLink)! as URL,options: [:],
                                      completionHandler: {  (status) in
                                        
            })
            spotifyLink = "https://www.spotify.com/"
        }
    }
    @IBAction func youtubeAction(_ sender: Any) {
        if (youtubeLabel.text!.isEmpty){
            print("No youtube added")
        }
        else {
            youtubeLink = youtubeLink + youtubeLabel.text!
            UIApplication.shared.open(URL(string: youtubeLink)! as URL, options: [:],
                                      completionHandler: { (status) in
                                        
            })
            youtubeLink = "https://www.youtube.com/"
    }
}
    
    
    @IBAction func editInfoAction(_ sender: Any) {
        performSegue(withIdentifier: "editInfo", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "\(firstName) \(lastName) Info"
        emailLabel.text = email
        instagramLabel.text = instagram
        snapchatLabel.text = snapchat
        twitterLabel.text = twitter
        spotifyLabel.text = spotify
        youtubeLabel.text = youtube
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "editInfo") {
            print("editInfo segue")
            let changeInfo = segue.destination as! GetInfoViewController
            changeInfo.firstName = firstName
            changeInfo.lastName = lastName
            changeInfo.email = email
            changeInfo.instagramHandle = instagram
            changeInfo.snapchatHandle = snapchat
            changeInfo.twitterHandle = twitter
            changeInfo.spotifyHandle = spotify
            changeInfo.youtubeHandle = youtube
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
