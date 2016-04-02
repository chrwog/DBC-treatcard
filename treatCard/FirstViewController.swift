//
//  FirstViewController.swift
//  treatCard
//
//  Created by chris shahin on 4/1/16.
//  Copyright © 2016 chris shahin. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request(.GET, "http://rhubarb-sundae-21254.herokuapp.com/")
            .responseJSON { _, _, result in
                print(result)
                debugPrint(result)
        }
        
        
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//this is a change