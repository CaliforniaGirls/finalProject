//
//  ViewController.swift
//  finalProject
//
//  Created by Vivian Phung on 6/25/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//


import UIKit


class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var imageView: UIImageView!
    

    @IBAction func SavePhoto(_ sender: Any) {
    saveImage(imageName: "test.png")

    }
    
    
    
    @IBAction func TakePhoto(_ sender: Any) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
    var imagePickerController: UIImagePickerController!
    
    
    func imagePickerController(_ _picker:UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    
    func saveImage(imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask,
                                                             true)[0] as NSString).appendingPathComponent(imageName)
        
        let image = imageView.image!
        let imageData = UIImagePNGRepresentation(image)
        print("Hello Jezabel")
        fileManager.createFile(atPath: imagePath as String, contents: imageData, attributes: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}


}
