//
//  ViewController.swift
//  FoodTrack
//
//  Created by Raoni Valadares on 12/24/15.
//  Copyright © 2015 None. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
    
        super.viewDidLoad()
        nameTextField.delegate = self
    
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return true
    
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
    
    
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {

        dismissViewControllerAnimated(true, completion: nil)

    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {

        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        photoImageView.image = selectedImage
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {

        nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        

    
    }
    
}

