//
//  MoodViewController.swift
//  Planner App
//
//  Created by Mohamed Ismail on 11/10/23.
//

import UIKit

class MoodViewController: UIViewController {

    @IBOutlet weak var confusedMood: UIImageView!
    @IBOutlet weak var anxiousMood: UIImageView!
    @IBOutlet weak var angryMood: UIImageView!
    @IBOutlet weak var stressedMood: UIImageView!
    @IBOutlet weak var energeticMood: UIImageView!
    @IBOutlet weak var relaxedMood: UIImageView!
    @IBOutlet weak var sadMood: UIImageView!
    @IBOutlet weak var inspiredMood: UIImageView!
    @IBOutlet weak var happyMood: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        happyMood.image = UIImage(named: "happy", in: Bundle.main, compatibleWith: nil)
        inspiredMood.image = UIImage(named: "inspired", in: Bundle.main, compatibleWith: nil)
        sadMood.image = UIImage(named: "sad", in: Bundle.main, compatibleWith: nil)
        relaxedMood.image = UIImage(named: "relaxed", in: Bundle.main, compatibleWith: nil)
        energeticMood.image = UIImage(named: "energetic", in: Bundle.main, compatibleWith: nil)
        stressedMood.image = UIImage(named: "stressed", in: Bundle.main, compatibleWith: nil)
        angryMood.image = UIImage(named: "angry", in: Bundle.main, compatibleWith: nil)
        anxiousMood.image = UIImage(named: "anxious", in: Bundle.main, compatibleWith: nil)
        confusedMood.image = UIImage(named: "confused", in: Bundle.main, compatibleWith: nil)

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
