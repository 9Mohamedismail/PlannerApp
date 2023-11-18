//
//  MoodViewController.swift
//  Planner App
//
//  Created by Mohamed Ismail on 11/10/23.
//

import UIKit

class MoodViewController: UIViewController {

    @IBAction func happyButton(_ sender: UIButton) {
        saveMood("happy")
        print("Happy")
    }
    
    @IBAction func energeticButton(_ sender: UIButton) {
        saveMood("energetic")
        print("Energetic")
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        saveMood("sad")
        print("Sad")
    }
    
    @IBAction func relaxedButton(_ sender: UIButton) {
        saveMood("relaxed")
        print("Relaxed")
    }
    
    @IBAction func inspiredButton(_ sender: UIButton) {
        saveMood("inspired")
        print("Inspired")
    }
    
    @IBAction func stressedButton(_ sender: UIButton) {
        saveMood("stressed")
        print("Stressed")
    }
    
    @IBAction func angryButton(_ sender: UIButton) {
        saveMood("angry")
        print("Angry")
    }
    
    @IBAction func anxiousButton(_ sender: UIButton) {
        saveMood("anxious")
        print("Anxious")
    }
    
    @IBAction func confusedButton(_ sender: UIButton) {
        saveMood("confused")
        print("Confused")
    }
    
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
        
        
        if let savedMood = getSavedMood() {
                   print("Retrieved saved mood: \(savedMood)")
               } else {
                   print("No saved mood found")
               }

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
    
    // Function to save the mood to UserDefaults
       func saveMood(_ mood: String) {
           let defaults = UserDefaults.standard
           defaults.set(mood, forKey: "savedMoodKey")
           // Synchronize UserDefaults to make sure the data is saved immediately
           defaults.synchronize()
        
       }

       // Function to retrieve the saved mood from UserDefaults
       func getSavedMood() -> String? {
           let defaults = UserDefaults.standard
           return defaults.string(forKey: "savedMoodKey")
       }
    


}
