//
//  thirdscreen.swift
//  Natural Tech
//
//  Created by Carlisha Mitchell on 10/20/18.
//  Copyright © 2018 Carlisha Mitchell. All rights reserved.
//

import UIKit
import Firebase

class thirdscreen: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var ImageView: UIImageView!
    
    @IBAction func ImportImage(_ sender: Any)
    {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
    
        image.allowsEditing = false
        
        self.present(image, animated: true)
        {
    }
       }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            ImageView.image =  image

            
        }
        else
        {
              //error message
        }
        
        self.dismiss(animated: true, completion: nil )

    }

    override func viewDidLoad() {
         super.viewDidLoad()
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
