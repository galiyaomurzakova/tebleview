//
//  ViewController.swift
//  tableview
//
//  Created by Галия Омурзакова on 04.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelCity: UILabel!
    
    @IBOutlet weak var labelCountry: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
    //var city = ""
    //var country = ""
    //var imagecity = ""
    
    var world = World()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelCity.text = world.city
        labelCountry.text = world.country
        imageview.image = UIImage(named: world.imagecity)
    }


}

