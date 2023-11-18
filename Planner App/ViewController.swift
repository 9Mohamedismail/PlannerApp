//
//  ViewController.swift
//  Planner App
//
//  Created by Mohamed Ismail on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var moodLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet var moodImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateGreeting()
        updateDate()
        updateMood()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateGreeting()
        updateDate()
        updateMood()
    }
    
    func updateGreeting() {
        let currentDate = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentDate)
        
        if (6..<12).contains(hour) {
            greetingLabel.text = "Hello, \nGood Morning"
        } else if (12..<17).contains(hour) {
            greetingLabel.text = "Hello, \nGood Afternoon"
        } else {
            greetingLabel.text = "Hello, \nGood Evening"
        }
    }
    
    func updateDate() {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MMMM d, yyyy"
        
        let currentDate = Date()
        let formattedDate = dateFormatter.string(from: currentDate)
        
        dateLabel.text = "Today is \(getDayOfWeek())\n\(formattedDate)"
    }
    
    func getDayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: Date())
    }
    
    func updateMood() {
        let moodManager = MoodViewController()
        
        if let retrievedMood = moodManager.getSavedMood() {
            moodLabel.text = "You are feeling: \(retrievedMood.uppercased())"
            moodImage.image = UIImage(named: retrievedMood, in: Bundle.main, compatibleWith: nil)
        } else {
            moodLabel.text = "How are you today? Set your mood!"
        }
    }
    
}
