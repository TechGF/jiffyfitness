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

    
    @IBOutlet weak var upperImage: UIButton!
    
    @IBOutlet weak var midImage: UIImageView!
    
    @IBOutlet weak var lowerImage: UIImageView!
    
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperImage.isUserInteractionEnabled = true
        midImage.isUserInteractionEnabled = true
        lowerImage.isUserInteractionEnabled = true
        
        upperImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))

        lowerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))

        

        // Do any additional setup after loading the view.
    }
    @objc func imageTap() {
        // present modally
        self.present(UpperBodyViewController(), animated: true)
        // or push to the navigation stack
        //self.navigationController?.push(UpperBodyViewController())
        // or perform segue if you use storyboards
        self.performSegue(withIdentifier: "UpperBodyViewController", sender: "")
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
