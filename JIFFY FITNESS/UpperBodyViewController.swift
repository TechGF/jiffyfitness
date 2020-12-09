//
//  UpperBodyViewController.swift
//  JIFFY FITNESS
//
//  Created by Jonathan Leibovici on 11/12/20.
//  Copyright © 2020 JIFFY FITNESS. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class UpperBodyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [PFObject]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFQuery(className:"arms")
        query.includeKey("Author")
        query.limit = 20
        
        query.findObjectsInBackground { (posts, error) in
            if posts != nil {
                self.posts = posts!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArmCell")
            as! ArmCell
        
        let post = posts[indexPath.row]
        
        let imageFile = post["Images"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        cell.photoView.af_setImage(withURL: url)
        //label needs to be adjusted
       
        //  let descript = UILabel.init()
        //descript.frame = CGRect(x: 10.0, y: 40.0, width: 100.0, height: 21.0)
        cell.descriptionLabel.textAlignment = .center
          cell.descriptionLabel.text =  post["description"] as? String ?? "  "
        
          //self.view.addSubview(cell.descriptionLabel)
        return cell
    }

    
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


/*
let query = PFQuery(className:"arms")

query.getObjectInBackground(withId: "<PARSE_OBJECT_ID>", block: { (parseObject: PFObject?, error: Error?) in

  if error == nil && parseObject != nil {
    print(parseObject as Any)
  } else {
    print(error as Any)
  }
})

return UITableViewCell()
*/
