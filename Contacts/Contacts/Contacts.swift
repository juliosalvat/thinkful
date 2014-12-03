//
//  Contacts.swift
//  Contacts
//
//  Created by able on 10/8/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import UIKit

// UITableViewDataSource, UITableViewDelegate

class Contacts: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Declaring elements
    struct contactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [contactInfo] = []
    
    //Sample contacts
    var firstContact = contactInfo(name: "John Coffey" , phoneNumber: "(111) 111-1111")
    var secondContact = contactInfo(name: "Cathy Kane" , phoneNumber: "(222) 222-2222")
    
    //TableView delegates
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listOfContacts.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell
    
        cell.textLabel!.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel!.text = listOfContacts[indexPath.row].phoneNumber
        
    return cell
        
    }
        //ViewController lifeCycle
        override func viewDidLoad() {
            super.viewDidLoad()
            
            listOfContacts.append(firstContact)
            listOfContacts.append(secondContact)
        }
    
    //Passing details to detail VC
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    
        if segue.identifier == "ToDetail" {
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = listOfContacts[indexPath!.row]
            let theDestination = (segue.destinationViewController as ContactDetails)
            
            
            theDestination.contactName = theSelectedRow.name
            theDestination.contactPhone = theSelectedRow.phoneNumber
        }
        
        else if segue.identifier == "ToInput"
        {
           
            
            
        }
    }

}