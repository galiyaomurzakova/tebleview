//
//  TableViewController.swift
//  tableview
//
//  Created by Галия Омурзакова on 04.06.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let array = [1, 2, 3, 4, 5 ]
    
   // var arrayCities = ["Astana", "Paris", "London", "NewYork", "Tokyo"]
    //var arrayCountry = ["Kazakhstan", "France", "England", "USA", "Japan"]
  //  var arrayImage = ["astana", "paris", "london", "newyork", "tokyo"]

    var arrayWorlds = [World(city: "Astana", country: "Kazakhstan", imagecity: "astana"),
                       World(city: "Paris", country: "France", imagecity: "paris"),
                       World(city: "London", country: "England", imagecity: "london")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addCity(_ sender: Any) {
       // arrayCities.append("new city")
      //  arrayCountry.append("new country")
      //  arrayImage.append("newcity")
        
        arrayWorlds.append(World(city: "new city", country: "new country", imagecity:  "newcity"))
        
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayWorlds.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayWorlds[indexPath.row].city
   
        let labelCountry = cell.viewWithTag(1001) as! UILabel
        labelCountry.text = arrayWorlds[indexPath.row].country
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayWorlds[indexPath.row].imagecity)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
       // detailVc.city = arrayWorlds[indexPath.row].city
      //  detailVc.country = arrayWorlds[indexPath.row].country
       // detailVc.imagecity = arrayWorlds[indexPath.row].imagecity
        
        detailVc.world = arrayWorlds[indexPath.row]
        
        
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
        //    arrayCities.remove(at: indexPath.row)
        //    arrayCountry.remove(at: indexPath.row)
        //    arrayImage.remove(at: indexPath.row)
            
            arrayWorlds.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
