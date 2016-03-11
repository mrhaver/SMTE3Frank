//
//  TableViewController.swift
//  Practicum3
//
//  Created by Fhict on 11/03/16.
//  Copyright © 2016 Frank Haver. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var pirates = [Pirate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
    }
    
    func loadJsonData(){
        let url = NSURL(string: "http://athena.fhict.nl/users/i886625/pirates.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request){(data, response, error) -> Void in
            do{
                if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments){
                    self.parseJsonData(jsonObject)
                }
            }
            catch{
                print("Error parsing JSON data")
            }
        }
        dataTask.resume();
    }
    
    func parseJsonData(jsonObject:AnyObject){
        if let jsonData = jsonObject as? NSArray{
            for item in jsonData{
                let newPirate = Pirate(
                    name: item.objectForKey("name") as! String,
                    life: item.objectForKey("life") as! String,
                    yearsActive: item.objectForKey("years_active") as! String,
                    countryOrigin: item.objectForKey("country_of_origin") as! String,
                    comments: item.objectForKey("comments") as! String
                )
                pirates.append(newPirate)
            }
        }
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        let currentRow = indexPath.row
        let currentPirate = self.pirates[currentRow]
        cell.textLabel?.text = currentPirate.name
        return cell
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pirates.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = self.tableView.indexPathForSelectedRow
        let selectedPirate = self.pirates[selectedRow!.row]
        let controller = segue.destinationViewController as! DetailViewController
        controller.selectedPirate = selectedPirate
        
    }
    
}
