//
//  FeedViewController.swift
//  JIFFY FITNESS
//
//  Created by Jonathan Leibovici on 11/10/20.
//  Copyright © 2020 JIFFY FITNESS. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage
class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func image1Tapped(_ sender: Any) {
        print("image 1")
    }
    
    @IBAction func image2Tapped(_ sender: Any) {
        print("image 2")
    }
    @IBAction func image3Tapped(_ sender: Any) {
        print("image 3")
    }
}
