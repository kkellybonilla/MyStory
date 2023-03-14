//
//  ViewController.swift
//  project1-MyStory
//
//  Created by Kelly Bonilla Guzman on 3/1/23.
//

import UIKit

// This struct will model the properties for each context item
struct ContextItem {
    let title: String
    let image: UIImage
    let context: String
}

class ViewController: UIViewController {
    
    // MARK: Models
    
    // Create individual context items using Context model
    let allAboutChesterCheetah = ContextItem(title: "All About Chester Cheetah", image: UIImage(named: "allAboutChesterCheetah")!, context: "Hey folks, the name's Chester. That's right—I'm a cheetah, and I'm dangerously cheesy. While serving as the official mascot of Frito-Lay's Cheetos brand snacks as well as Chester's Snacks, I can say with certainty that it's not easy being cheesy. Thus, in my spare time, I enjoy relaxing with my kitty, Puff.")
    let chestersChoiceChips = ContextItem(title: "Chester's Choice Chips", image: UIImage(named: "chestersChoiceChips")!, context: "Ahhh, there's crunchy, puffs, fantastix, and the list goes on!!! I made my way into public schools with my delicious baked chips. I decked the grocery aisles with my one-of-a-kind mac n' cheese. I even snagged free movie tickets (which, only a sly cheetah like me could achieve, of course, in this economy) with my popcorn. Nevertheless, my choice chips will always be my one and only, my heart and soul, xxtra flamin hot cheetos.")
    let chestersCollabs = ContextItem(title: "Chester's Collabs", image: UIImage(named: "chestersCollabs")!, context: "¡DEJA TU HUELLA! What? You didn't know I was Latinx?? Please, Bad Bunny and I go all the way back to when he was just Bad and I was just Chester. Now that we're both stars, we work on a lot of sick projects together. Shoot, I didn't ask to be born Latinx, nomas tuve suerte ;)")
    
    // Array for storing context items
    var contextItems: [ContextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Store Context models
        contextItems = [allAboutChesterCheetah, chestersChoiceChips, chestersCollabs]
        
    }

    @IBAction func didTapContext(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.context = contextItems[0]
            } else if tappedView.tag == 1 {
                detailViewController.context = contextItems[1]
            } else if tappedView.tag == 2 {
                detailViewController.context = contextItems[2]
            } else {
                print("no context item was tapped, please check your selection.")
            }
        }
    }
    
}

