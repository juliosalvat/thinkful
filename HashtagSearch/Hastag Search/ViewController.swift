//
//  ViewController.swift
//  Hastag Search
//
//  Created by skooliostyles on 12/3/14.
//  Copyright (c) 2014 TechShock. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    let instagramClientID = "8f3108299a724187af377ef9e4dc856b"

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "https://api.instagram.com/v1/tags/clararockmore/media/recent?client_id=8f3108299a724187af377ef9e4dc856b",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
                
                if let dataArray = responseObject.valueForKey("data") as? [AnyObject] {
                    self.scrollView.contentSize = CGSizeMake(320, CGFloat(320*dataArray.count))
                    for var i = 0; i < dataArray.count; i++ {
                        let dataObject: AnyObject = dataArray[i]
                        if let imageURLString = dataObject.valueForKeyPath("images.standard_resolution.url") as? String {
                            println("image " + String(i) + " URL is " + imageURLString)
                            
                            let imageData =  NSData(contentsOfURL: NSURL(string: imageURLString)!)
                            let imageView = UIImageView(image: UIImage(data: imageData!))
                            imageView.frame = CGRectMake(0, CGFloat(320*i), 320, 320)
                            self.scrollView.addSubview(imageView)
                        }
                    }
                }
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
        
    }
    
        func searchBarSearchButtonClicked(searchBar: UISearchBar!) {
            for subview in self.scrollView.subviews {
                subview.removeFromSuperview()
            }
            
            searchBar.resignFirstResponder()
            
            let instagramURLString = "https://api.instagram.com/v1/tags/" + searchBar.text + "/media/recent?client_id=8f3108299a724187af377ef9e4dc856b"
            
            let manager = AFHTTPRequestOperationManager()
            
            manager.GET( instagramURLString,
                parameters: nil,
                success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                    println("JSON: " + responseObject.description)
                    
                    if let dataArray = responseObject.valueForKey("data") as? [AnyObject] {
                        self.scrollView.contentSize = CGSizeMake(320, CGFloat(320*dataArray.count))
                        for var i = 0; i < dataArray.count; i++ {
                            let dataObject: AnyObject = dataArray[i]
                            if let imageURLString = dataObject.valueForKeyPath("images.standard_resolution.url") as? String {
                                println("image " + String(i) + " URL is " + imageURLString)
                                
                                let imageData =  NSData(contentsOfURL: NSURL(string: imageURLString)!)
                                let imageView = UIImageView(image: UIImage(data: imageData!))
                                imageView.frame = CGRectMake(0, CGFloat(320*i), 320, 320)
                                self.scrollView.addSubview(imageView)
                            }
                        }
                    }
                },
                failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                    println("Error: " + error.localizedDescription)
            })
        }
    
    
}

