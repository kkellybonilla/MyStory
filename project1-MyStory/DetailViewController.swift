//
//  DetailViewController.swift
//  project1-MyStory
//
//  Created by Kelly Bonilla Guzman on 3/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var context: ContextItem?
    @IBOutlet weak var contextImageView: UIImageView!
    @IBOutlet weak var contextLabel: UILabel!
    @IBOutlet weak var contextTitle: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let context = context {
            contextTitle.title = context.title
            contextImageView.image = context.image
            contextLabel.text = context.context
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

}
