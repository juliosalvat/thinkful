//
//  ViewController.swift
//  jSonSkillz
//
//  Created by skooliostyles on 11/7/14.
//  Copyright (c) 2014 JulioSalvat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myNameLabel: LTMorphingLabel!

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "http://graph.facebook.com/juliosalvatjr",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
                
                if let myName = responseObject.valueForKey("name") as? String {
                    self.myNameLabel.text = myName;
                }
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
        
        self.imageView.alpha = 0.0 //Hide imageView until we get the data
        
        let myProfilePictureURL = NSURL(string: "http://graph.facebook.com/juliosalvatjr/picture?type=square&width=180&height=180")
        
        let activityIndictorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        activityIndictorView.center = self.view.center
        self.view.addSubview(activityIndictorView)
        activityIndictorView.startAnimating()
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            // Do some async stuff
            let imageData = NSData(contentsOfURL: myProfilePictureURL!)
            
            NSOperationQueue.mainQueue().addOperationWithBlock {
                // Do some main thread stuff
                self.imageView.image = UIImage(data: imageData!)
                activityIndictorView.stopAnimating()
                
                UIView.animateWithDuration(1.0, animations: {
                    self.imageView.alpha = 1.0
                    }, completion: {
                        (value: Bool) in
                        println("Animation complete!")
                })
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

