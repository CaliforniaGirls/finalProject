//
//  ShareViewController.swift
//  finalProject
//
//  Created by GWC on 6/25/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var instagramOutlet: UITextField!
    var instagramLink: String = "https://www.instagram.com/"
    
    @IBAction func addInstagram(_ sender: Any) {
        
        if (instagramOutlet.text!.isEmpty){
            print("No instagram added.")
        }
        else {
            instagramLink = instagramLink + instagramOutlet.text!
            UIApplication.shared.open(URL(string: instagramLink)! as URL, options: [:],
                completionHandler: { (status) in
           
            })
            instagramLink = "https://www.instagram.com/"
        }
        
    }
    
    @IBOutlet weak var twitterOutlet: UITextField!
    var TwitterLink: String = "https://www.twitter.com/"
    
    @IBAction func addTwitter(_ sender: Any) {
        if (twitterOutlet.text!.isEmpty){
            print("No twitter added.")
        }
        else {
            TwitterLink = TwitterLink + twitterOutlet.text!
            UIApplication.shared.open(URL(string: TwitterLink)! as URL, options: [:],
                completionHandler: {  (status) in
    
       })
            TwitterLink = "https://www.twitter.com/"
            
    }
 }
    @IBOutlet weak var spotifyOutlet: UITextField!
    var spotifyLink: String = "https://www.spotify.com/"
   
    @IBAction func addSpotify(_ sender: Any) {
    if (spotifyOutlet.text!.isEmpty){
        print("No spotify added.")
    }
    else {
        spotifyLink = spotifyLink + spotifyOutlet.text!
        UIApplication.shared.open(URL(string: spotifyLink)! as URL,options: [:],
            completionHandler: {  (status) in
     
     })
        spotifyLink = "https://www.spotify.com/"
   }
}
    @IBOutlet weak var youtubeOutlet: UITextField!
    var youtubeLink: String = "https://www.youtube.com/"
    
    @IBAction func addYoutube(_ sender: Any) {
        if (youtubeOutlet.text!.isEmpty){
            print("No youtube added")
        }
        else {
             youtubeLink = youtubeLink + youtubeOutlet.text!
            UIApplication.shared.open(URL(string: youtubeLink)! as URL, options: [:],
                completionHandler: { (status) in
                    
          })
             youtubeLink = "https://www.youtube.com/"
      }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
